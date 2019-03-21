//
//  GitHubSearchAPIStream.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Unio
import RxSwift
import RxCocoa

protocol GitHubSearchAPIStreamType: AnyObject {
    var input: Relay<GitHubSearchAPIStream.Input> { get }
    var output: Relay<GitHubSearchAPIStream.Output> { get }
}

final class GitHubSearchAPIStream: UnioStream<GitHubSearchAPIStream.Logic>, GitHubSearchAPIStreamType {

    init(extra: Extra = .init()) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra,
                   logic: Logic())
    }
}

extension GitHubSearchAPIStream {
    typealias State = NoState

    struct Input: InputType {

        let searchRepository = PublishRelay<String>()
    }

    struct Output: OutputType {

        let searchResponse: Observable<GitHub.ItemsResponse<GitHub.Repository>>
        let searchError: Observable<Error>
    }

    struct Extra: ExtraType {

        let session = URLSession.shared
    }

    struct Logic: LogicType {
        typealias Input = GitHubSearchAPIStream.Input
        typealias Output = GitHubSearchAPIStream.Output
        typealias State = GitHubSearchAPIStream.State
        typealias Extra = GitHubSearchAPIStream.Extra
    }
}

extension GitHubSearchAPIStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {

        let session = dependency.extra.session
        let searchResponseEvent = dependency.inputObservable(for: \.searchRepository)
            .flatMapLatest { query -> Observable<Event<GitHub.ItemsResponse<GitHub.Repository>>> in
                guard var components = URLComponents(string: "https://api.github.com/search/repositories") else {
                    return .empty()
                }
                components.queryItems = [URLQueryItem(name: "q", value: query)]

                guard let url = components.url else {
                    return .empty()
                }

                var request = URLRequest(url: url)
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")

                return session.rx.data(request: request)
                    .map { data -> GitHub.ItemsResponse<GitHub.Repository> in
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        return try decoder.decode(GitHub.ItemsResponse<GitHub.Repository>.self, from: data)
                    }
                    .materialize()
            }
            .share()

        return Output(searchResponse: searchResponseEvent.flatMap { $0.element.map(Observable.just) ?? .empty() },
                      searchError: searchResponseEvent.flatMap { $0.error.map(Observable.just) ?? .empty() })
    }
}
