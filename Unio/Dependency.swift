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

    private let _input: Input

    internal init(input: Input, state: State, extra: Extra) {
        self._input = input
        self.state = state
        self.extra = extra
    }

    /// Makes possible to get Observable from `Input`.
    public func inputObservable<O: ObservableType>(for keyPath: KeyPath<Input, O>) -> Observable<O.Element> {

        return _input[keyPath: keyPath].asObservable()
    }

    /// Returns read-only value accessible object (e.g. BehaviorRelay).
    ///
    /// - note: Object is reference, not copied one.
    @available(*, deprecated, renamed: "property(from:for:)")
    public func readOnlyReference<Output: OutputType, T: ValueAccessible>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> ReadOnly<T> {
        return ReadOnly(output, for: keyPath)
    }

    /// Returns read-only value accessible object (e.g. BehaviorSubject).
    ///
    /// - note: Object is reference, not copied one.
    @available(*, deprecated, renamed: "property(from:for:)")
    public func readOnlyReference<Output: OutputType, T: ThrowableValueAccessible>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> ReadOnly<T> {
        return ReadOnly(output, for: keyPath)
    }

    /// Returns property that accessible to value (e.g. BehaviorRelay).
    ///
    /// - note: Object is reference, not copied one.
    public func property<Output: OutputType, T: ValueAccessibleObservable>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> Property<T.Element> {
        return Property(output, for: keyPath)
    }

    /// Returns property that accessible to throwable value (e.g. BehaviorSubject).
    ///
    /// - note: Object is reference, not copied one.
    public func property<Output: OutputType, T: ThrowableValueAccessibleObservable>(from output: Relay<Output>, for keyPath: KeyPath<Output, T>) -> ThrowableProperty<T.Element> {
        return ThrowableProperty(output, for: keyPath)
    }
}
