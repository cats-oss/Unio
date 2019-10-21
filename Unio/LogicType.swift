//
//  LogicType.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/18.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxSwift

/// Represents definitions and implementations of UnioStream logic.
public protocol LogicType {
    associatedtype Input: InputType
    associatedtype Output: OutputType
    associatedtype State: StateType
    associatedtype Extra: ExtraType

    /// Generates Output from Dependency.
    ///
    /// - note: This method called once when a linked UnioStream is initialized.
    static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output
}
