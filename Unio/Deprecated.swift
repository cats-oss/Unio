//
//  Deprecated.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/20.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift

/// Makes possible to access particular method of property that contained by ValueAccessibleObservable (or ThrowableValueAccessibleObservable) even while hides actual properties (BehaviorRelay, BehaviorSubject and so on).
///
/// - note: When generic parameter is `ValueAccessibleObservable`, it makes possible to access Observale and value via `KeyPath`.
///         On the other hand, when generic parameter is `ThrowableValueAccessibleObservable`, it makes possible to access Observale and throwable via `KeyPath`.
@available(*, deprecated, renamed: "Property")
public final class ReadOnly<T: ObservableConvertibleType>: ObservableConvertibleType {

    private let _value: () -> T.Element
    private let _throwableValue: () throws -> T.Element
    private let _asObservable: () -> Observable<T.Element>

    private init(value: @escaping () -> T.Element,
                 throwableValue: @escaping () throws -> T.Element,
                 asObservable: @escaping () -> Observable<T.Element>) {
        self._value = value
        self._throwableValue = throwableValue
        self._asObservable = asObservable
    }

    /// Makes possible to get Observable
    public func asObservable() -> Observable<T.Element> {
        return _asObservable()
    }
}

@available(*, deprecated, renamed: "Property")
extension ReadOnly: ValueAccessible where T: ValueAccessibleObservable {

    /// Makes possible to get value
    public var value: T.Element {
        return _value()
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorRelay = output._dependency[keyPath: keyPath]
        self.init(value: { behaviorRelay.value },
                  throwableValue: { fatalError("not reached here") },
                  asObservable: { behaviorRelay.asObservable() })
    }
}

@available(*, deprecated, renamed: "ThrowableProperty")
extension ReadOnly: ThrowableValueAccessible where T: ThrowableValueAccessibleObservable {

    /// Makes possible to get throwableValue
    public func throwableValue() throws -> T.Element {
        return try _throwableValue()
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorSubject = output._dependency[keyPath: keyPath]
        self.init(value: { fatalError("not reached here")  },
                  throwableValue: { try behaviorSubject.throwableValue() },
                  asObservable: { behaviorSubject.asObservable() })
    }
}

extension Dependency {

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
}
