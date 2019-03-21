//
//  UnioStream.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// Makes possible to implement Unidirectional input / output stream.
open class UnioStream<Logic: LogicType> {

    public let input: Relay<Logic.Input>
    public let output: Relay<Logic.Output>

    private let state: StateType
    private let extra: ExtraType

    public init(input: Logic.Input, state: Logic.State, extra: Logic.Extra, logic: Logic) {
        let dependency = Dependency(input: input, state: state, extra: extra)
        let output = logic.bind(from: dependency)
        self.input = Relay(input)
        self.output = Relay(output)
        self.state = state
        self.extra = extra
    }
}
