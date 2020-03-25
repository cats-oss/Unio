//
//  Wrappers.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift

/// Makes possible to access particular method of property that contained by Input (or Output) even while hides actual properties (PublishRelay, PublishSubject and so on).
@dynamicMemberLookup
public final class InputWrapper<T: InputType> {

    internal let _dependency: T

    /// Initializes with `Input`.
    public init(_ dependency: T) {
        self._dependency = dependency
    }

    /// Accepts `event` and emits it to subscribers via `Input`.
    @available(swift, deprecated: 5.1, message: "Use `input.xxx(value)`")
    public func accept<U: PublishRelayType>(_ value: U.Element, for keyPath: KeyPath<T, U>) {

        self[dynamicMember: keyPath](value)
    }

    /// Send `event` to this observer via `Input`.
    @available(swift, deprecated: 5.1, message: "Use `input.xxx`")
    public func accept<U: PublishRelayType>(for keyPath: KeyPath<T, U>) -> AnyObserver<U.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Notify observer about sequence event via `Input`.
    @available(swift, deprecated: 5.1, message: "Use `input.xxx.onEvent(event)`")
    public func onEvent<O: ObserverType>(_ event: Event<O.Element>, for keyPath: KeyPath<T, O>) {

        onEvent(for: keyPath).on(event)
    }

    /// Send `event` to this observer via `Input`.
    @available(swift, deprecated: 5.1, message: "Use `input.xxx.onEvent(event)`")
    public func onEvent<O: ObserverType>(for keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Accepts `event` and emits it to subscribers via `Input`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<U: PublishRelayType>(dynamicMember keyPath: KeyPath<T, U>) -> (U.Element) -> Void {

        return _dependency[keyPath: keyPath].accept
    }

    /// Send `event` to this observer via `Input`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<U: PublishRelayType>(dynamicMember keyPath: KeyPath<T, U>) -> AnyObserver<U.Element> {

        let relay = _dependency[keyPath: keyPath]
        return AnyObserver { $0.element.map(relay.accept) }
    }

    /// Send `event` to this observer via `Input`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<O: ObserverType>(dynamicMember keyPath: KeyPath<T, O>) -> AnyObserver<O.Element> {

        return _dependency[keyPath: keyPath].asObserver()
    }
}

/// Makes possible to access particular method of property that contained by Output even while hides actual properties (BehaviorRelay, BehaviorSubject and so on).
@dynamicMemberLookup
public final class OutputWrapper<T: OutputType> {

    internal let _dependency: T

    /// Initializes with `Output`.
    public init(_ dependency: T) {
        self._dependency = dependency
    }

    /// Makes possible to get Observable from `Output`.
    @available(swift, deprecated: 5.1, message: "Use `output.xxx`")
    public func observable<O: ObservableConvertibleType>(for keyPath: KeyPath<T, O>) -> Observable<O.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorRelay`.
    @available(swift, deprecated: 5.1, message: "Use `output.xxx.value`")
    public func value<U: ValueAccessibleObservable>(for keyPath: KeyPath<T, U>) -> U.Element {

        return self[dynamicMember: keyPath].value
    }

    /// Makes possible to get value from Output when generic parameter is `BehaviorSubject`.
    @available(swift, deprecated: 5.1, message: "Use `output.xxx.value`")
    public func value<U: ThrowableValueAccessibleObservable>(for keyPath: KeyPath<T, U>) throws -> U.Element {

        return try self[dynamicMember: keyPath].throwableValue()
    }

    /// Makes possible to get `Property<U>` from Output when generic parameter is `BehaviorRelay`.
    @available(swift, deprecated: 5.1, message: "Use `output.xxx`")
    public func property<U: ValueAccessibleObservable>(for keyPath: KeyPath<T, U>) -> Property<U.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Makes possible to get `ThrowableProperty<U>` from Output when generic parameter is `BehaviorSubject`.
    @available(swift, deprecated: 5.1, message: "Use `output.xxx`")
    public func property<U: ThrowableValueAccessibleObservable>(for keyPath: KeyPath<T, U>) -> ThrowableProperty<U.Element> {

        return self[dynamicMember: keyPath]
    }

    /// Makes possible to get Observable from `Output`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<O: ObservableConvertibleType>(dynamicMember keyPath: KeyPath<T, O>) -> Observable<O.Element> {

        return _dependency[keyPath: keyPath].asObservable()
    }

    /// Makes possible to get `Property<U>` from Output when generic parameter is `BehaviorRelay`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<O: ValueAccessibleObservable>(dynamicMember keyPath: KeyPath<T, O>) -> Property<O.Element> {

        return Property(self, for: keyPath)
    }

    /// Makes possible to get `ThrowableProperty<U>` from Output when generic parameter is `BehaviorSubject`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<O: ThrowableValueAccessibleObservable>(dynamicMember keyPath: KeyPath<T, O>) -> ThrowableProperty<O.Element> {

        return ThrowableProperty(self, for: keyPath)
    }

    /// Makes possible to get `Property<U>` from Output.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<E>(dynamicMember keyPath: KeyPath<T, Property<E>>) -> Property<E> {

        return _dependency[keyPath: keyPath]
    }

    /// Makes possible to get `ThrowableProperty<U>` from Output.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<E>(dynamicMember keyPath: KeyPath<T, ThrowableProperty<E>>) -> ThrowableProperty<E> {

        return _dependency[keyPath: keyPath]
    }

    public subscript<E>(dynamicMember keyPath: KeyPath<T, Computed<E>>) -> E {

        return _dependency[keyPath: keyPath].value
    }
}

/// Makes possible to access Observable that contained by T even while hides actual properties (BehaviorRelay, BehaviorSubject and so on).
@dynamicMemberLookup
public final class ObservableWrapper<T> {

    private let object: T

    internal init(_ object: T) {
        self.object = object
    }

    /// Makes possible to get Observable from `T`.
    ///
    /// - note: KeyPath Dynamic Member Lookup is avairable greater than Swift5.1
    public subscript<O: ObservableConvertibleType>(dynamicMember keyPath: KeyPath<T, O>) -> Observable<O.Element> {
        return object[keyPath: keyPath].asObservable()
    }
}

#if swift(<5.1)
extension InputWrapper {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}

extension OutputWrapper {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}

extension ObservableWrapper {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}
#endif
