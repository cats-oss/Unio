//
//  Dependency.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/18.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxSwift

/// Provides dependencies when `Logic` creates `Output`.
///
/// - note: This is not initializationable outside from Union.framework.
public final class Dependency<Input: InputType, State: StateType, Extra: ExtraType> {

    public let state: State
    public let extra: Extra

    /// Makes possible to get Observable from `Input`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public let inputObservables: ObservableWrapper<Input>

    internal init(input: Input, state: State, extra: Extra) {
        self.state = state
        self.extra = extra
        self.inputObservables = ObservableWrapper(input)
    }

    /// Makes possible to get Observable from `Input`.
    @available(swift, deprecated: 5.1, message: "Use `inputObservables.xxx`")
    public func inputObservable<O: ObservableConvertibleType>(for keyPath: KeyPath<Input, O>) -> Observable<O.Element> {

        return inputObservables[dynamicMember: keyPath]
    }
}
