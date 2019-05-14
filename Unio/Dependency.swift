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

    public let inputObservables: InputObservableProxy<Input>

    internal init(input: Input, state: State, extra: Extra) {
        self.inputObservables = InputObservableProxy(input)
        self.state = state
        self.extra = extra
    }

    /// Returns read-only value accessible object (e.g. BehaviorRelay).
    ///
    /// - note: Object is reference, not copied one.
    public func readOnlyReference<Output: OutputType, T: ValueAccessible>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> ReadOnly<T> {
        return ReadOnly(output, for: keyPath)
    }

    /// Returns read-only value accessible object (e.g. BehaviorSubject).
    ///
    /// - note: Object is reference, not copied one.
    public func readOnlyReference<Output: OutputType, T: ThrowableValueAccessible>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> ReadOnly<T> {
        return ReadOnly(output, for: keyPath)
    }
}

@dynamicMemberLookup
public final class InputObservableProxy<Input: InputType> {
    private let input: Input

    init(_ input: Input) {
        self.input = input
    }

    // subscript(dynamicMember: String) is needed only for swift <5.1
    // to avoid compile error with @dynamicMemberLookup. Not for actual use.
    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Void { return }

    @available(swift, introduced: 5.1)
    subscript<O: ObservableType>(dynamicMember keyPath: KeyPath<Input, O>) -> Observable<O.Element> {
        return self[keyPath]
    }

    subscript<O: ObservableType>(_ keyPath: KeyPath<Input, O>) -> Observable<O.Element> {
        return input[keyPath: keyPath].asObservable()
    }
}
