//
//  UnioStream.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// Makes possible to implement Unidirectional input / output stream.
open class UnioStream<Logic: LogicType> {

    public let input: InputWrapper<Logic.Input>
    public let output: OutputWrapper<Logic.Output>

    private let _state: Logic.State
    private let _extra: Logic.Extra
    private let _logic: Logic

    /// - note: initialize parameters are retained in UnioStream
    public init(input: Logic.Input, state: Logic.State, extra: Logic.Extra, logic: Logic) {
        let dependency = Dependency(input: input, state: state, extra: extra)
        let output = logic.bind(from: dependency)
        self.input = InputWrapper(input)
        self.output = OutputWrapper(output)
        self._state = state
        self._extra = extra
        self._logic = logic
    }
}
