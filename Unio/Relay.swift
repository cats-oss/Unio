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
public final class Relay<T> {

    internal let _dependency: T

    private init(dependency: T) {
        self._dependency = dependency
    }

    private func _observable<O: ObservableConvertibleType>(for keyPath: KeyPath<T, O>) -> Observable<O.Element> {

        return _dependency[keyPath: keyPath].asObservable()
    }

    private func _accept<U: AcceptableRelay>(_ value: U.Element, for keyPath: KeyPath<T, U>) {

        _dependency[keyPath: keyPath].accept(value)
    }

    private func _accept<U: AcceptableRelay>(for keyPath: KeyPath<T, U>) -> AnyObserver<U.Element> {

        return AnyObserver { [weak self] event in
            switch event {
            case let .next(value):
                guard let me = self else {
                    return
                }
                me._accept(value, for: keyPath)

            case .error, .completed:
                break
            }
        }
    }

    private func _onEvent<O: ObserverType>(_ event: Event<O.Element>, for keyPath: KeyPath<T, O>) {
        _dependency[keyPath: keyPath].on(event)
    }

    private func _onEvent<O: ObserverType>(for keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {

        return _dependency[keyPath: keyPath].asObserver()
    }

    private func _value<U: ValueAccessible>(for keyPath: KeyPath<T, U>) -> U.Element {

        return _dependency[keyPath: keyPath].value
    }

    private func _value<U: ThrowableValueAccessible>(for keyPath: KeyPath<T, U>) throws -> U.Element {
        return try _dependency[keyPath: keyPath].throwableValue()
    }
}

// - MARK: Relay<Input>

extension Relay where T: InputType {

    /// Initializes with `Input`.
    public convenience init(_ dependency: T) {
        self.init(dependency: dependency)
    }

    /// Accepts `event` and emits it to subscribers via `Input`.
    public func accept<U: AcceptableRelay>(_ value: U.Element, for keyPath: KeyPath<T, U>) {

        _accept(value, for: keyPath)
    }

    /// Send `event` to this observer via `Input`.
    public func accept<U: AcceptableRelay>(for keyPath: KeyPath<T, U>) -> AnyObserver<U.Element> {

        return _accept(for: keyPath)
    }

    /// Notify observer about sequence event via `Input`.
    public func onEvent<O: ObserverType>(_ event: Event<O.Element>, for keyPath: KeyPath<T, O>) {

        _onEvent(event, for: keyPath)
    }

    /// Send `event` to this observer via `Input`.
    public func onEvent<O: ObserverType>(for keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {

        return _onEvent(for: keyPath)
    }
}

// - MARK: Relay<Output>

extension Relay where T: OutputType {

    /// Initializes with `Output`.
    public convenience init(_ dependency: T) {
        self.init(dependency: dependency)
    }

    /// Makes possible to get Observable from `Output`.
    public func observable<O: ObservableConvertibleType>(for keyPath: KeyPath<T, O>) -> Observable<O.Element> {

        return _observable(for: keyPath)
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorRelay`.
    public func value<U: ValueAccessible>(for keyPath: KeyPath<T, U>) -> U.Element {

        return _value(for: keyPath)
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorSubject`.
    public func value<U: ThrowableValueAccessible>(for keyPath: KeyPath<T, U>) throws -> U.Element {

        return try _value(for: keyPath)
    }
}

// - MARK: Relay<BehaviorRelay>

extension Relay where T: ValueAccessibleObservable {

    public var value: T.Element {
        return _dependency.value
    }

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorRelay = output._dependency[keyPath: keyPath]
        self.init(dependency: behaviorRelay)
    }

    public func asObservable() -> Observable<T.Element> {
        return _dependency.asObservable()
    }
}

// - MARK: Relay<BehaviorSubject>

extension Relay where T: ThrowableValueAccessibleObservable {

    internal convenience init<U: OutputType>(_ output: Relay<U>, for keyPath: KeyPath<U, T>) {
        let behaviorSubject = output._dependency[keyPath: keyPath]
        self.init(dependency: behaviorSubject)
    }

    public func throwableValue() throws -> T.Element {
        return try _dependency.throwableValue()
    }

    public func asObservable() -> Observable<T.Element> {
        return _dependency.asObservable()
    }
}
