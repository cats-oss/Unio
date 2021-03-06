//
//  UnioStreamTests.swift
//  UnioTests
//
//  Created by marty-suzuki on 2019/03/22.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import XCTest
@testable import Unio

final class UnioStreamTests: XCTestCase {

    private var dependency: Dependency!

    override func setUp() {

        dependency = Dependency()
    }

    func testInput() {

        let expected = "test-input"
        let testTarget = dependency.testTarget
        let stack = BehaviorRelay<String?>(value: nil)

        let disposable = dependency.input.relay
            .bind(to: stack)

        #if swift(>=5.1)
        testTarget.input.relay.onNext(expected)
        #else
        testTarget.input.accept(expected, for: \.relay)
        #endif

        XCTAssertEqual(expected, stack.value)

        disposable.dispose()
    }

    func testOutput() {

        let expected = "test-output"
        let testTarget = dependency.testTarget

        dependency.output.relay.accept(expected)

        #if swift(>=5.1)
        XCTAssertEqual(expected, testTarget.output.relay.value)
        #else
        XCTAssertEqual(expected, testTarget.output.value(for: \.relay))
        #endif
    }

    func testDependency() {
        let bindCalled = PublishRelay<Unio.Dependency<Input, State, Extra>>()
        let stack = BehaviorRelay<Unio.Dependency<Input, State, Extra>?>(value: nil)
        let disposable = bindCalled
            .bind(to: stack)

        let dependency = Dependency(bindCalled: bindCalled)

        guard let value = stack.value else {
            XCTFail("stack.value must not be nil")
            return
        }

        XCTAssertEqual(value.state.id, dependency.state.id)
        XCTAssertEqual(value.extra.id, dependency.extra.id)

        disposable.dispose()


        do {
            let expected = "test-input"
            let stack = BehaviorRelay<String?>(value: nil)

            #if swift(>=5.1)
            let disposable = value.inputObservables.relay
                .bind(to: stack)
            #else
            let disposable = value.inputObservable(for: \.relay)
                .bind(to: stack)
            #endif

            dependency.input.relay.accept(expected)

            XCTAssertEqual(expected, stack.value)

            disposable.dispose()
        }
    }
}

extension UnioStreamTests {

    fileprivate struct Input: InputType {
        let relay = PublishRelay<String>()
    }

    fileprivate struct Output: OutputType {
        let relay = BehaviorRelay<String?>(value: nil)
    }

    fileprivate struct State: StateType {
        let id = UUID().uuidString
    }

    fileprivate struct Extra: ExtraType {
        let id = UUID().uuidString
        let bindCalled: PublishRelay<Unio.Dependency<Input, State, Extra>>
        let bindResponse: BehaviorRelay<Output>
    }

    fileprivate enum Logic: LogicType {
        typealias Input = UnioStreamTests.Input
        typealias Output = UnioStreamTests.Output
        typealias State = UnioStreamTests.State
        typealias Extra = UnioStreamTests.Extra
    }

    private struct Dependency {

        let testTarget: PrimitiveStream<Logic>

        let output: Output
        let input = Input()
        let state = State()
        let extra: Extra

        init(bindCalled: PublishRelay<Unio.Dependency<Input, State, Extra>> = .init()) {
            let output = Output()
            self.output = output
            self.extra = Extra(bindCalled: bindCalled, bindResponse: BehaviorRelay(value: output))
            self.testTarget = PrimitiveStream(input: input, state: state, extra: extra)
        }
    }
}

extension UnioStreamTests.Logic {

    static func bind(from dependency: Unio.Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {
        dependency.extra.bindCalled.accept(dependency)
        return dependency.extra.bindResponse.value
    }
}
