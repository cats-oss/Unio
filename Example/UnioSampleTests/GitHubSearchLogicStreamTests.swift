//
//  GitHubSearchLogicStreamTests.swift
//  UnioSampleTests
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import Unio
import XCTest
@testable import UnioSample

final class GitHubSearchLogicStreamTests: XCTestCase {

    private var dependency: Dependency!

    override func setUp() {

        dependency = Dependency()
    }

    func testOutput_receiving_repositories() {
        
        let expected = GitHub.Repository(name: "test-name",
                                         fullName: "test-full-name",
                                         htmlUrl: URL(string: "https://github.com")!)
        let response = GitHub.ItemsResponse(items: [expected])

        let repositoriesStack = BehaviorRelay<[GitHub.Repository]>(value: [])

        let disposable = dependency.testTarget
            .output.repositories
            .bind(to: repositoriesStack)

        dependency.searchAPIStream.searchResponse.accept(response)

        XCTAssertEqual(expected, repositoriesStack.value.first)

        disposable.dispose()
    }

    func testOutput_receiving_error() {

        let expected = NSError(domain: "test-domain", code: 1234, userInfo: nil)

        let errorStack = BehaviorRelay<Error?>(value: nil)

        let disposable = dependency.testTarget
            .output.error
            .bind(to: errorStack)

        dependency.searchAPIStream.searchError.accept(expected)

        XCTAssertEqual(expected, errorStack.value.map { $0 as NSError })

        disposable.dispose()
    }

    func testInput_expect_is_not_called_when_sending_search_text_and_check_without_waiting() {

        let count = max(2, Int(arc4random() % 5))
        let expected = "test-search-text\(count)"

        let expect = expectation(description: "waiting search text")
        expect.isInverted = true
        let disposable = dependency.searchAPIStream._input.searchRepository
            .filter { $0 == expected }
            .subscribe(onNext: { _ in
                expect.fulfill()
            })

        (1...count).forEach {
            dependency.testTarget.input.searchText("test-search-text\($0)")
        }

        wait(for: [expect], timeout: 0.1)

        disposable.dispose()
    }

    func testInput_expect_is_called_when_sending_search_text_and_waiting_0_3_sec() {

        let count = max(2, Int(arc4random() % 5))
        let expected = "test-search-text\(count)"

        let expect = expectation(description: "waiting search text")
        let disposable = dependency.searchAPIStream._input.searchRepository
            .filter { $0 == expected }
            .subscribe(onNext: { _ in
                expect.fulfill()
            })

        (1...count).forEach {
            dependency.testTarget.input.searchText("test-search-text\($0)")
        }

        wait(for: [expect], timeout: 1)

        disposable.dispose()
    }
}

extension GitHubSearchLogicStreamTests {

    private struct Dependency {

        let testTarget: GitHubSearchLogicStream
        let searchAPIStream = MockGitHubSearchAPIStream()

        init() {
            let extra = GitHubSearchLogicStream.Extra(searchAPIStream: searchAPIStream,
                                                      scheduler: ConcurrentMainScheduler.instance)
            self.testTarget = GitHubSearchLogicStream(extra: extra)
        }
    }
}
