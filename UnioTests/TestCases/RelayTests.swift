//
//  RelayTests.swift
//  UnioTests
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxCocoa
import RxRelay
import RxSwift
import XCTest
@testable import Unio

final class RelayTests: XCTestCase {

    private var dependency: Dependency!

    override func setUp() {

        dependency = Dependency()
    }

    func testInput_onEvent_value() {

        let expected = "test-on-event"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = dependency.inputSubject
            .bind(to: stack)

        testTarget.onEvent(.next(expected), for: \.subject)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testInput_onEvent_observer() {

        let expected = "test-on-event"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable1 = dependency.inputSubject
            .bind(to: stack)

        let disposable2 = Observable.just(expected)
            .bind(to: testTarget.onEvent(for: \.subject))

        XCTAssertEqual(stack.value, expected)

        disposable1.dispose()
        disposable2.dispose()
    }

    func testInput_accept_value() {

        let expected = "test-accept"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = dependency.inputRelay
            .bind(to: stack)

        testTarget.accept(expected, for: \.relay)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testInput_accept_observer() {

        let expected = "test-accept"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable1 = dependency.inputRelay
            .bind(to: stack)

        let disposable2 = Observable.just(expected)
            .bind(to: testTarget.accept(for: \.relay))

        XCTAssertEqual(stack.value, expected)

        disposable1.dispose()
        disposable2.dispose()
    }

    func testOutput_observable() {

        let expected = "test-observable"
        let testTarget = dependency.testTargetOutput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = testTarget.observable(for: \.relay)
            .bind(to: stack)

        dependency.outputRelay.accept(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testOutput_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetOutput

        dependency.outputRelay.accept(expected)

        XCTAssertEqual(testTarget.value(for: \.relay), expected)
    }

    func testOutput_throwable_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetOutput

        dependency.outputSubject.onNext(expected)

        XCTAssertEqual(try testTarget.value(for: \.subject), expected)
    }

    func testValueAccessibleObservable_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetRelay

        dependency.outputRelay.accept(expected)

        XCTAssertEqual(testTarget.value, expected)
    }

    func testValueAccessibleObservable_observable() {

        let expected = "test-observable"
        let testTarget = dependency.testTargetRelay
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = testTarget.asObservable()
            .bind(to: stack)

        dependency.outputRelay.accept(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testThrowableValueAccessibleObservable_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetSubject

        dependency.outputSubject.onNext(expected)

        XCTAssertEqual(try testTarget.throwableValue(), expected)
    }

    func testThrowableValueAccessibleObservable_observable() {

        let expected = "test-observable"
        let testTarget = dependency.testTargetSubject
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = testTarget.asObservable()
            .bind(to: stack)

        dependency.outputSubject.onNext(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }
}

extension RelayTests {

    private struct Output: OutputType {
        let subject: BehaviorSubject<String?>
        let relay: BehaviorRelay<String?>
    }

    private struct Input: InputType {
        let relay: PublishRelay<String>
        let subject: PublishSubject<String>
    }

    private struct Dependency {

        let testTargetInput: Relay<Input>
        let testTargetOutput: Relay<Output>

        let testTargetSubject: Relay<BehaviorSubject<String?>>
        let testTargetRelay: Relay<BehaviorRelay<String?>>

        let inputSubject = PublishSubject<String>()
        let inputRelay = PublishRelay<String>()

        let outputSubject = BehaviorSubject<String?>(value: nil)
        let outputRelay = BehaviorRelay<String?>(value: nil)

        init() {
            let input = Input(relay: inputRelay, subject: inputSubject)
            self.testTargetInput = Relay(input)

            let output = Output(subject: outputSubject, relay: outputRelay)
            self.testTargetOutput = Relay(output)

            self.testTargetSubject = Relay(testTargetOutput, for: \.subject)
            self.testTargetRelay = Relay(testTargetOutput, for: \.relay)
        }
    }
}
