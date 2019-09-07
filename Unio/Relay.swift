//
//  Relay.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift

/// Makes possible to access particular method of property that contained by Input (or Output) even while hides actual properties (PublishRelay, PublishSubject and so on).
///
/// - note: When generic parameter is `InputType`, it makes possible to access Observales via `KeyPath`.
///         On the other hand, when generic parameter is `OutType`, it makes possible to access Observers via `KeyPath`.
@dynamicMemberLookup
public final class Relay<T> {

    internal let _dependency: T

    private let _observables: DMLA.Observables<T>?
    private let _values: DMLA.Values<T>?

    private init(dependency: T,
                 observables: DMLA.Observables<T>?,
                 values: DMLA.Values<T>?) {
        self._dependency = dependency
        self._observables = observables
        self._values = values
    }
}

#if swift(<5.1)
extension Relay {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}
#endif

// - MARK: Relay<Input>

extension Relay where T: InputType {

    /// Initializes with `Input`.
    public convenience init(_ dependency: T) {
        self.init(dependency: dependency, observables: nil, values: nil)
    }

    /// Accepts `event` and emits it to subscribers via `Input`.
    public func accept<U: AcceptableRelay>(_ value: U.Element, for keyPath: KeyPath<T, U>) {

        accept(for: keyPath).accept(value)
    }

    /// Send `event` to this observer via `Input`.
    public func accept<U: AcceptableRelay>(for keyPath: KeyPath<T, U>) -> AcceptableObserver<U.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Notify observer about sequence event via `Input`.
    public func onEvent<O: ObserverType>(_ event: Event<O.Element>, for keyPath: KeyPath<T, O>) {

        onEvent(for: keyPath).on(event)
    }

    /// Send `event` to this observer via `Input`.
    public func onEvent<O: ObserverType>(for keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {

        return self[dynamicMember: keyPath]
    }

    public subscript<U: AcceptableRelay>(dynamicMember keyPath: KeyPath<T, U>) -> AcceptableObserver<U.Element> {
        return AcceptableObserver(_dependency[keyPath: keyPath])
    }

    public subscript<O: ObserverType>(dynamicMember keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {
        return _dependency[keyPath: keyPath].asObserver()
    }
}

// - MARK: Relay<Output>

extension Relay where T: OutputType {

    public var observables: DMLA.Observables<T> {
        return _observables!
    }

    public var values: DMLA.Values<T> {
        return _values!
    }

    /// Initializes with `Output`.
    public convenience init(_ dependency: T) {
        self.init(dependency: dependency,
                  observables: .init(dependency),
                  values: .init(dependency))
    }

    /// Makes possible to get Observable from `Output`.
    public func observable<O: ObservableConvertibleType>(for keyPath: KeyPath<T, O>) -> Observable<O.Element> {

        return observables[dynamicMember: keyPath]
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorRelay`.
    public func value<U: ValueAccessible>(for keyPath: KeyPath<T, U>) -> U.Element {

        return values[dynamicMember: keyPath]
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorSubject`.
    public func value<U: ThrowableValueAccessible>(for keyPath: KeyPath<T, U>) throws -> U.Element {

        return try values[dynamicMember: keyPath].throwableValue()
    }
}

// - MARK: Relay<BehaviorRelay>

extension Relay where T: ValueAccessibleObservable {

    public var value: T.Element {
        return _dependency.value
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorRelay = output._dependency[keyPath: keyPath]
        self.init(dependency: behaviorRelay, observables: nil, values: nil)
    }

    public func asObservable() -> Observable<T.Element> {
        return _dependency.asObservable()
    }
}

// - MARK: Relay<BehaviorSubject>

extension Relay where T: ThrowableValueAccessibleObservable {

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorSubject = output._dependency[keyPath: keyPath]
        self.init(dependency: behaviorSubject, observables: nil, values: nil)
    }

    public func throwableValue() throws -> T.Element {
        return try _dependency.throwableValue()
    }

    public func asObservable() -> Observable<T.Element> {
        return _dependency.asObservable()
    }
}
