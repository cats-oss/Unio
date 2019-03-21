//
//  ReadOnly.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/20.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

/// Makes possible to access particular method of property that contained by ValueAccessibleObservable (or ThrowableValueAccessibleObservable) even while hides actual properties (BehaviorRelay, BehaviorSubject and so on).
///
/// - note: When generic parameter is `ValueAccessibleObservable`, it makes possible to access Observale and value via `KeyPath`.
///         On the other hand, when generic parameter is `ThrowableValueAccessibleObservable`, it makes possible to access Observale and throwable via `KeyPath`.
public final class ReadOnly<T: ObservableConvertibleType>: ObservableConvertibleType {

    private let _value: () -> T.E
    private let _throwableValue: () throws -> T.E
    private let _asObservable: () -> Observable<T.E>

    private init(value: @escaping () -> T.E,
                 throwableValue: @escaping () throws -> T.E,
                 asObservable: @escaping () -> Observable<T.E>) {
        self._value = value
        self._throwableValue = throwableValue
        self._asObservable = asObservable
    }

    /// Makes possible to get Observable
    public func asObservable() -> Observable<T.E> {
        return _asObservable()
    }
}

extension ReadOnly: ValueAccessible where T: ValueAccessibleObservable {

    /// Makes possible to get value
    public var value: T.E {
        return _value()
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorRelay = output._dependency[keyPath: keyPath]
        self.init(value: { behaviorRelay.value },
                  throwableValue: { fatalError("not reached here") },
                  asObservable: { behaviorRelay.asObservable() })
    }
}

extension ReadOnly: ThrowableValueAccessible where T: ThrowableValueAccessibleObservable {

    /// Makes possible to get throwableValue
    public func throwableValue() throws -> T.E {
        return try _throwableValue()
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorSubject = output._dependency[keyPath: keyPath]
        self.init(value: { fatalError("not reached here")  },
                  throwableValue: { try behaviorSubject.throwableValue() },
                  asObservable: { behaviorSubject.asObservable() })
    }
}
