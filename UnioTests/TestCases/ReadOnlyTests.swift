//
//  ReadOnlyTests.swift
//  UnioTests
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import XCTest
@testable import Unio

final class ReadOnlyTests: XCTestCase {

    private var dependency: Dependency!

    override func setUp() {

        dependency = Dependency()
    }

    func testBehaviorSubject() {

        let expected = "test-behavior-subject"
        let testTarget = dependency.testTargetSubject
        let stack = BehaviorRelay<String?>(value: nil)
        let disposable = testTarget.asObservable()
            .bind(to: stack)

        dependency.subject.onNext(expected)

        XCTAssertEqual(stack.value, expected)
        XCTAssertEqual(try testTarget.throwableValue(), expected)

        disposable.dispose()
    }

    func testBehaviorRelay() {

        let expected = "test-behavior-relay"
        let testTarget = dependency.testTargetRelay
        let stack = BehaviorRelay<String?>(value: nil)
        let disposable = testTarget.asObservable()
            .bind(to: stack)

        dependency.relay.accept(expected)

        XCTAssertEqual(stack.value, expected)
        XCTAssertEqual(testTarget.value, expected)

        disposable.dispose()
    }
}

extension ReadOnlyTests {

    private struct Output: OutputType {
        
        let subject: BehaviorSubject<String?>
        let relay: BehaviorRelay<String?>
    }

    private struct Dependency {

        let testTargetSubject: ThrowableProperty<String?>
        let testTargetRelay: Property<String?>

        let subject = BehaviorSubject<String?>(value: nil)
        let relay = BehaviorRelay<String?>(value: nil)

        init() {
            let output = Relay(Output(subject: subject, relay: relay))
            self.testTargetSubject = ThrowableProperty(output, for: \.subject)
            self.testTargetRelay = Property(output, for: \.relay)
        }
    }
}
