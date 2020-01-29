//
//  AnyLogicBasedStream.swift
//  Unio
//
//  Created by marty-suzuki on 2020/01/25.
//  Copyright © 2020 tv.abema. All rights reserved.
//

/// Makes possible to implement Unidirectional input / output stream and be able to implement LogicType to  its self.
///
/// ```
/// // Usage Example
/// class GithubSearchStream: UnioStream<GithubSearchStream> {
///     struct Input: InputType {}
///
///     struct Output: OutputType {}
///
///     struct State: StateType {}
///
///     struct Extra: ExtraType {}
///
///     convenience init() {
///         self.init(input: Input(), state: State(), extra: Extra())
///     }
///
///     static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {
///         return Output()
///     }
/// }
/// ```
public typealias UnioStream<Logic: LogicType> = AnyLogicBasedStream<Logic.Input, Logic.Output> & LogicType

/// A type which have LogicType based initializer.
public protocol AnyLogicBasedStreamType: UnioStreamType {
    init<Logic: LogicType>(input: Logic.Input,
                           state: Logic.State,
                           extra: Logic.Extra,
                           logic _: Logic.Type) where Input == Logic.Input, Output == Logic.Output
}

extension AnyLogicBasedStreamType where Self: LogicType {
    public init(input: Input, state: State, extra: Extra) {
        self.init(input: input, state: state, extra: extra, logic: Self.self)
    }
}

/// A type-erased wrapper which have LogicType based initializer.
open class AnyLogicBasedStream<Input: InputType, Output: OutputType>: AnyLogicBasedStreamType {
    public let input: InputWrapper<Input>
    public let output: OutputWrapper<Output>

    /// Strong reference to the actual stream for preventing it being released.
    private let _stream: AnyObject

    required public init<Logic: LogicType>(input: Logic.Input,
                                           state: Logic.State,
                                           extra: Logic.Extra,
                                           logic _: Logic.Type) where Input == Logic.Input, Output == Logic.Output {
        let stream = PrimitiveStream<Logic>(input: input, state: state, extra: extra)
        self.input = stream.input
        self.output = stream.output
        self._stream = stream
    }
}
