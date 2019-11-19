//
//  AnyUnioStreamTests.swift
//  UnioTests
//
//  Created by Akio Yasui on 2019/11/19.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
import XCTest
import Unio

final class AnyUnioStreamTests: XCTestCase {
    func testAnyUnioStreamTests() {
        do {
            let stack = BehaviorRelay<Int?>(value: nil)

            let stream = AdderStream<Int>()
            let anyStream = AnyUnioStream(stream)

            let disposable = anyStream.output.result.bind(to: stack)
            defer { disposable.dispose() }

            anyStream.input.lhs(1)
            anyStream.input.rhs(2)

            XCTAssertEqual(stack.value, 1 + 2)
        }

        do {
            let stack = BehaviorRelay<Int?>(value: nil)

            let mockStream = MockAdderStream<Int>()
            let anyStream = AnyUnioStream(mockStream)

            let disposable = anyStream.output.result.bind(to: stack)
            defer { disposable.dispose() }

            anyStream.input.lhs(1)
            anyStream.input.rhs(2)

            XCTAssertEqual(stack.value, nil)

            mockStream._result.accept(123)

            XCTAssertEqual(stack.value, 123)
        }
    }

    func test_actual_stream_is_not_released_until_wrapper_is_released() {
        var stream = Optional.some(AdderStream<Int>())
        var anyStream = Optional.some(AnyUnioStream(stream!))
        _ = anyStream // suppress "never read" warning

        var isDeinitCalled = false
        stream!._deinitHandler = { isDeinitCalled = true }

        stream = nil
        XCTAssertEqual(isDeinitCalled, false)

        anyStream = nil
        XCTAssertEqual(isDeinitCalled, true)
    }
}

protocol AdderStreamType: UnioStreamType {
    associatedtype T: AdditiveArithmetic
    var input: InputWrapper<AdderStream<T>.Input> { get }
    var output: OutputWrapper<AdderStream<T>.Output> { get }
}

final class AdderStream<T: AdditiveArithmetic>: UnioStream<AdderStream>, AdderStreamType {
    var _deinitHandler: (() -> Void)?

    struct Input: InputType {
        let lhs = PublishRelay<T>()
        let rhs = PublishRelay<T>()
    }

    struct Output: OutputType {
        let result: PublishRelay<T>
    }

    init() {
        super.init(input: Input(),
                   state: State(),
                   extra: Extra())
    }

    deinit {
        _deinitHandler?()
    }

    static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output {
        let result = PublishRelay<T>()
        Observable
            .combineLatest(dependency.inputObservables.lhs,
                           dependency.inputObservables.rhs,
                           resultSelector: +)
            .bind(to: result)
            .disposed(by: disposeBag)
        return Output(result: result)
    }
}

final class MockAdderStream<T: AdditiveArithmetic>: AdderStreamType {
    let input: InputWrapper<AdderStream<T>.Input>
    let output: OutputWrapper<AdderStream<T>.Output>

    let _input = AdderStream<T>.Input()
    let _result = PublishRelay<T>()

    init() {
        input = InputWrapper(_input)
        output = OutputWrapper(AdderStream<T>.Output(result: _result))
    }
}
