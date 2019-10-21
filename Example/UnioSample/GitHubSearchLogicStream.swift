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
    var input: InputWrapper<GitHubSearchLogicStream.Input> { get }
    var output: OutputWrapper<GitHubSearchLogicStream.Output> { get }
}

final class GitHubSearchLogicStream: UnioStream<GitHubSearchLogicStream>, GitHubSearchLogicStreamType {

    init(extra: Extra = .init(searchAPIStream: GitHubSearchAPIStream(), scheduler: ConcurrentMainScheduler.instance)) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra)
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

    static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {

        let state = dependency.state
        let extra = dependency.extra
        let searchAPIStream = extra.searchAPIStream

        let searchResponse: Observable<GitHub.ItemsResponse<GitHub.Repository>>
        #if swift(>=5.1)
        searchResponse = searchAPIStream.output.searchResponse
        #else
        searchResponse = searchAPIStream.output.observable(for: \.searchResponse)
        #endif
        searchResponse
            .map { $0.items }
            .bind(to: state.repositories)
            .disposed(by: disposeBag)

        let searchText: Observable<String?>
        let searchRepository: AnyObserver<String>
        #if swift(>=5.1)
        searchText = dependency.inputObservables.searchText
        searchRepository = searchAPIStream.input.searchRepository
        #else
        searchText = dependency.inputObservable(for: \.searchText)
        searchRepository = searchAPIStream.input.accept(for: \.searchRepository)
        #endif
        searchText
            .debounce(.milliseconds(300), scheduler: extra.scheduler)
            .flatMap { query -> Observable<String> in
                guard let query = query, !query.isEmpty else {
                    return .empty()
                }
                return .just(query)
            }
            .bind(to: searchRepository)
            .disposed(by: disposeBag)

        #if swift(>=5.1)
        return Output(repositories: state.repositories,
                      error: searchAPIStream.output.searchError)
        #else
        return Output(repositories: state.repositories,
                      error: searchAPIStream.output.observable(for: \.searchError))
        #endif
    }
}
