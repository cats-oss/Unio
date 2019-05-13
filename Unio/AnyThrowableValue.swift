//
//  AnyThrowableValue.swift
//  Unio
//
//  Created by marty-suzuki on 2019/05/14.
//  Copyright © 2019 tv.abema. All rights reserved.
//

public struct AnyThrowableValue<Element>: ThrowableValueAccessible {

    private let get: () throws -> Element

    init<T: ThrowableValueAccessible>(_ value: T) where T.Element == Element {
        self.get = { try value.throwableValue() }
    }

    public func throwableValue() throws -> Element {
        return try get()
    }
}
