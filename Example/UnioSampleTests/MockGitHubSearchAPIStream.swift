//
//  MockGitHubSearchAPIStream.swift
//  UnioSampleTests
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import Unio
@testable import UnioSample

final class MockGitHubSearchAPIStream: GitHubSearchAPIStreamType {

    let input: Relay<GitHubSearchAPIStream.Input>
    let output: Relay<GitHubSearchAPIStream.Output>

    let _input = GitHubSearchAPIStream.Input()

    let searchResponse = BehaviorRelay<GitHub.ItemsResponse<GitHub.Repository>?>(value: nil)
    let searchError = BehaviorRelay<Error?>(value: nil)

    init() {
        self.input = Relay(_input)
        let _output = GitHubSearchAPIStream.Output(searchResponse: searchResponse.flatMap { $0.map(Observable.just) ?? .empty() },
                                                   searchError: searchError.flatMap { $0.map(Observable.just) ?? .empty() })
        self.output = Relay(_output)
    }
}
