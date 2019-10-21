//
//  GitHubSearchViewStream.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Unio
import RxSwift
import RxRelay

protocol GitHubSearchViewStreamType: AnyObject {
    var input: InputWrapper<GitHubSearchViewStream.Input> { get }
    var output: OutputWrapper<GitHubSearchViewStream.Output> { get }
}

final class GitHubSearchViewStream: UnioStream<GitHubSearchViewStream>, GitHubSearchViewStreamType {

    init(extra: Extra = .init(logicStream: GitHubSearchLogicStream())) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra)
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

    static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {

        let logicStream = dependency.extra.logicStream

        #if swift(>=5.1)
        dependency.inputObservables.searchText
            .bind(to: logicStream.input.searchText)
            .disposed(by: disposeBag)
        
        return Output(repositories: logicStream.output.repositories,
                      errorMessage: logicStream.output.error.map { $0.localizedDescription })
        #else
        dependency.inputObservable(for: \.searchText)
            .bind(to: logicStream.input.accept(for: \.searchText))
            .disposed(by: disposeBag)

        return Output(repositories: logicStream.output.observable(for: \.repositories),
                      errorMessage: logicStream.output.observable(for: \.error).map { $0.localizedDescription })
        #endif
    }
}
