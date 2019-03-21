//
//  GitHubSearchViewStream.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Unio
import RxSwift
import RxCocoa

protocol GitHubSearchViewStreamType: AnyObject {
    var input: Relay<GitHubSearchViewStream.Input> { get }
    var output: Relay<GitHubSearchViewStream.Output> { get }
}

final class GitHubSearchViewStream: UnioStream<GitHubSearchViewStream.Logic>, GitHubSearchViewStreamType {

    init(extra: Extra = .init(logicStream: GitHubSearchLogicStream())) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra,
                   logic: Logic())
    }
}

extension GitHubSearchViewStream {

    typealias State = NoState

    struct Input: InputType {

        let searchText = PublishRelay<String?>()
    }

    struct Output: OutputType {

        let repositories: Observable<[GitHub.Repository]>
        let errorMessage: Observable<String>
    }

    struct Extra: ExtraType {
        
        let logicStream: GitHubSearchLogicStreamType
        let disposeBag = DisposeBag()
    }

    struct Logic: LogicType {
        typealias Input = GitHubSearchViewStream.Input
        typealias Output = GitHubSearchViewStream.Output
        typealias State = GitHubSearchViewStream.State
        typealias Extra = GitHubSearchViewStream.Extra
    }
}

extension GitHubSearchViewStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {

        let disposeBag = dependency.extra.disposeBag
        let logicStream = dependency.extra.logicStream

        dependency.inputObservable(for: \.searchText)
            .bind(to: logicStream.input.accept(for: \.searchText))
            .disposed(by: disposeBag)

        return Output(repositories: logicStream.output.observable(for: \.repositories),
                      errorMessage: logicStream.output.observable(for: \.error).map { $0.localizedDescription })
    }
}
