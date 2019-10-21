//
//  UnioStream.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxSwift

public typealias UnioStream<Logic: LogicType> = PrimitiveStream<Logic> & LogicType

/// Makes possible to implement Unidirectional input / output stream.
open class PrimitiveStream<Logic: LogicType> {

    public let input: InputWrapper<Logic.Input>
    public let output: OutputWrapper<Logic.Output>

    private let _state: Logic.State
    private let _extra: Logic.Extra
    private let _disposeBag = DisposeBag()

    /// - note: initialize parameters are retained in UnioStream
    public init(input: Logic.Input, state: Logic.State, extra: Logic.Extra) {
        let dependency = Dependency(input: input, state: state, extra: extra)
        let output = Logic.bind(from: dependency, disposeBag: _disposeBag)
        self.input = InputWrapper(input)
        self.output = OutputWrapper(output)
        self._state = state
        self._extra = extra
    }
}
