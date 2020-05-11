//
//  WrappersTests.swift
//  UnioTests
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import XCTest
@testable import Unio

final class WrappersTests: XCTestCase {

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

        #if swift(>=5.1)
        testTarget.subject.onNext(expected)
        #else
        testTarget.onEvent(.next(expected), for: \.subject)
        #endif

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testInput_onEvent_observer() {

        let expected = "test-on-event"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable1 = dependency.inputSubject
            .bind(to: stack)

        #if swift(>=5.1)
        let disposable2 = Observable.just(expected)
            .subscribe(testTarget.subject.on)
        #else
        let disposable2 = Observable.just(expected)
            .subscribe(testTarget.onEvent(for: \.subject).on)
        #endif

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

        #if swift(>=5.1)
        testTarget.relay(expected)
        #else
        testTarget.accept(expected, for: \.relay)
        #endif

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testInput_accept_observer() {

        let expected = "test-accept"
        let testTarget = dependency.testTargetInput
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable1 = dependency.inputRelay
            .bind(to: stack)

        #if swift(>=5.1)
        let disposable2 = Observable.just(expected)
            .subscribe(onNext: testTarget.relay)
        #else
        let disposable2 = Observable.just(expected)
            .subscribe(onNext: { testTarget.accept($0, for: \.relay) })
        #endif

        XCTAssertEqual(stack.value, expected)

        disposable1.dispose()
        disposable2.dispose()
    }

    func testOutput_observable() {

        let expected = "test-observable"
        let testTarget = dependency.testTargetOutput
        let stack = BehaviorRelay<String?>(value: nil)

        #if swift(>=5.1)
        let disposable = testTarget._observable
            .bind(to: stack)
        #else
        let disposable = testTarget.observable(for: \._observable)
            .bind(to: stack)
        #endif

        dependency.acceptForObservable(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testOutput_observable_as_behavior_relay() {

        let expected = "test-observable-as-behavior-relay"
        let testTarget = dependency.testTargetOutput
        let stack = BehaviorRelay<String?>(value: nil)

        #if swift(>=5.1)
        let disposable = testTarget.relay
            .bind(to: stack)
        #else
        let disposable = testTarget.observable(for: \.relay)
            .bind(to: stack)
        #endif

        dependency.outputRelay.accept(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testOutput_observable_as_behavior_subject() {

        let expected = "test-observable-as-behavior-subject"
        let testTarget = dependency.testTargetOutput
        let stack = BehaviorRelay<String?>(value: nil)

        #if swift(>=5.1)
        let disposable = testTarget.subject
            .bind(to: stack)
        #else
        let disposable = testTarget.observable(for: \.subject)
            .bind(to: stack)
        #endif

        dependency.outputSubject.onNext(expected)

        XCTAssertEqual(stack.value, expected)

        disposable.dispose()
    }

    func testOutput_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetOutput

        dependency.outputRelay.accept(expected)

        #if swift(>=5.1)
        XCTAssertEqual(testTarget.relay.value, expected)
        #else
        XCTAssertEqual(testTarget.value(for: \.relay), expected)
        #endif
    }

    func testOutput_throwable_value() {

        let expected = "test-value"
        let testTarget = dependency.testTargetOutput

        dependency.outputSubject.onNext(expected)

        #if swift(>=5.1)
        XCTAssertEqual(try testTarget.subject.throwableValue(), expected)
        #else
        XCTAssertEqual(try testTarget.value(for: \.subject), expected)
        #endif
    }

    func testOutput_computed() {

        let expected = Int(arc4random())
        dependency.outputComputed.accept(expected)
        let testTarget = dependency.testTargetOutput

        #if swift(>=5.1)
        XCTAssertEqual(testTarget.computed, expected)
        #else
        XCTAssertEqual(testTarget[dynamicMember: \.computed], expected)
        #endif
    }

    func testOutput_HasState() throws {
        struct State: StateType {
            let isEnabled = BehaviorRelay<Bool>(value: false)
            let isHidden = BehaviorSubject<Bool>(value: true)
            let show = PublishRelay<Void>()
            let hide = PublishSubject<Void>()
        }

        struct Output: OutputType, HasState {
            let state: State
        }

        let state = State()
        let output = OutputWrapper(Output(state: state))

        XCTAssertEqual(output.isEnabled.value, false)
        XCTAssertEqual(try output.isHidden.throwableValue(), true)

        do {
            let show = BehaviorRelay<Void?>(value: nil)
            let disposable = output.show.bind(to: show)
            defer { disposable.dispose() }
            state.show.accept(())
            XCTAssertNotNil(show.value)
        }

        do {
            let hide = BehaviorRelay<Void?>(value: nil)
            let disposable = output.hide.bind(to: hide)
            defer { disposable.dispose() }
            state.hide.onNext(())
            XCTAssertNotNil(hide.value)
        }
    }
}

extension WrappersTests {

    private struct Output: OutputType {
        let subject: BehaviorSubject<String?>
        let relay: BehaviorRelay<String?>
        let _observable: Observable<String>
        let computed: Computed<Int?>
    }

    private struct Input: InputType {
        let relay: PublishRelay<String>
        let subject: PublishSubject<String>
    }

    private struct Dependency {

        let testTargetInput: InputWrapper<Input>
        let testTargetOutput: OutputWrapper<Output>

        let inputSubject = PublishSubject<String>()
        let inputRelay = PublishRelay<String>()

        let outputSubject = BehaviorSubject<String?>(value: nil)
        let outputRelay = BehaviorRelay<String?>(value: nil)
        let outputComputed: BehaviorRelay<Int?>

        let acceptForObservable: (String) -> Void

        init() {
            let relayForObservable = PublishRelay<String>()
            self.acceptForObservable = { relayForObservable.accept($0) }

            let input = Input(relay: inputRelay, subject: inputSubject)
            self.testTargetInput = InputWrapper(input)

            let computed = BehaviorRelay<Int?>(value: nil)
            self.outputComputed = computed

            let output = Output(subject: outputSubject,
                                relay: outputRelay,
                                _observable: relayForObservable.asObservable(),
                                computed: .init(getter: { computed.value }))
            self.testTargetOutput = OutputWrapper(output)
        }
    }
}
