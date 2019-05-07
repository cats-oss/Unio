//
//  GitHubSearchLogicStream.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Unio
import RxSwift
import RxRelay

protocol GitHubSearchLogicStreamType: AnyObject {
    var input: Relay<GitHubSearchLogicStream.Input> { get }
    var output: Relay<GitHubSearchLogicStream.Output> { get }
}

final class GitHubSearchLogicStream: UnioStream<GitHubSearchLogicStream.Logic>, GitHubSearchLogicStreamType {

    init(extra: Extra = .init(searchAPIStream: GitHubSearchAPIStream(), scheduler: ConcurrentMainScheduler.instance)) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra,
                   logic: Logic())
    }
}

extension GitHubSearchLogicStream {

    struct Input: InputType {

        let searchText = PublishRelay<String?>()
    }

    struct Output: OutputType {

        let repositories: BehaviorRelay<[GitHub.Repository]>
        let error: Observable<Error>
    }

    struct State: StateType {

        let repositories = BehaviorRelay<[GitHub.Repository]>(value: [])
    }

    struct Extra: ExtraType {

        let searchAPIStream: GitHubSearchAPIStreamType
        let scheduler: SchedulerType
    }

    struct Logic: LogicType {
        typealias Input = GitHubSearchLogicStream.Input
        typealias Output = GitHubSearchLogicStream.Output
        typealias State = GitHubSearchLogicStream.State
        typealias Extra = GitHubSearchLogicStream.Extra

        let disposeBag = DisposeBag()
    }
}

extension GitHubSearchLogicStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {

        let state = dependency.state
        let extra = dependency.extra
        let searchAPIStream = extra.searchAPIStream

        searchAPIStream.output
            .observable(for: \.searchResponse)
            .map { $0.items }
            .bind(to: state.repositories)
            .disposed(by: disposeBag)

        dependency.inputObservable(for: \.searchText)
            .debounce(.milliseconds(300), scheduler: extra.scheduler)
            .flatMap { query -> Observable<String> in
                guard let query = query, !query.isEmpty else {
                    return .empty()
                }
                return .just(query)
            }
            .bind(to: searchAPIStream.input.accept(for: \.searchRepository))
            .disposed(by: disposeBag)

        return Output(repositories: state.repositories,
                      error: searchAPIStream.output.observable(for: \.searchError))
    }
}
