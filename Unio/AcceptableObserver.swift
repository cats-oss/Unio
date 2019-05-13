//
//  AcceptableObserver.swift
//  Unio
//
//  Created by marty-suzuki on 2019/05/14.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxSwift

/// A type-erased `AcceptableRelay`.
public struct AcceptableObserver<Element>: AcceptableRelay, ObserverType {

    private let _accept: (Element) -> Void

    /// Construct an instance whose `on(event)` calls `observer.on(event)`
    ///
    /// - parameter observer: Observer that receives sequence events.
    init<Relay: AcceptableRelay>(_ relay: Relay) where Relay.Element == Element {
        self._accept = { relay.accept($0) }
    }

    /// Send `event` to this observer.
    ///
    /// - parameter event: Event instance.
    public func on(_ event: Event<Element>) {
        switch event {
        case let .next(element):
            _accept(element)

        case .error, .completed:
            return
        }
    }

    public func accept(_ element: Element) {
        _accept(element)
    }
}
