//
//  PrimitiveProperty.swift
//  Unio
//
//  Created by marty-suzuki on 2019/06/13.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift

/// Represents a property that makes possible to access value
public typealias Property<Element> = PrimitiveProperty<Element, Never>

/// Represents a property that makes possible to access throwable value
public typealias ThrowableProperty<Element> = PrimitiveProperty<Element, Error>

/// Makes possible to access particular method of property that contained by ValueAccessibleObservable (or ThrowableValueAccessibleObservable) even while hides actual properties (BehaviorRelay, BehaviorSubject and so on).
///
/// - note: When generic parameter is `ValueAccessibleObservable`, it makes possible to access Observale and value via `KeyPath`.
///         On the other hand, when generic parameter is `ThrowableValueAccessibleObservable`, it makes possible to access Observale and throwable via `KeyPath`.
public final class PrimitiveProperty<Element, Failure> {

    private let _value: () -> Element
    private let _throwableValue: () throws -> Element
    private let _asObservable: () -> Observable<Element>

    private init(value: @escaping () -> Element,
                 throwableValue: @escaping () throws -> Element,
                 asObservable: @escaping () -> Observable<Element>) {
        self._value = value
        self._throwableValue = throwableValue
        self._asObservable = asObservable
    }
}

extension PrimitiveProperty: ObservableConvertibleType {

    public func asObservable() -> Observable<Element> {
        return _asObservable()
    }
}

extension PrimitiveProperty: ValueAccessible where Failure == Never {

    /// Makes possible to get value
    public var value: Element {
        return _value()
    }

    internal convenience init<U: OutputType, T: ValueAccessibleObservable>(_ output: OutputWrapper<U>, for keyPath: KeyPath<U, T>) where T.Element == Element {
        let behaviorRelay = output._dependency[keyPath: keyPath]
        self.init(value: { behaviorRelay.value },
                  throwableValue: { fatalError("not reached here") },
                  asObservable: { behaviorRelay.asObservable() })
    }
}

extension PrimitiveProperty: ThrowableValueAccessible where Failure == Error {

    /// Makes possible to get throwableValue
    public func throwableValue() throws -> Element {
        return try _throwableValue()
    }

    internal convenience init<U: OutputType, T: ThrowableValueAccessibleObservable>(_ output: OutputWrapper<U>, for keyPath: KeyPath<U, T>) where T.Element == Element {
        let behaviorSubject = output._dependency[keyPath: keyPath]
        self.init(value: { fatalError("not reached here")  },
                  throwableValue: { try behaviorSubject.throwableValue() },
                  asObservable: { behaviorSubject.asObservable() })
    }
}
