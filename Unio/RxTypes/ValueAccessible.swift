//
//  ValueAccessible.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/20.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxSwift

public typealias ValueAccessibleObservable = ValueAccessible & ObservableConvertibleType

/// Represents accessible to value
public protocol ValueAccessible {
    associatedtype E
    var value: E { get }
}

public typealias ThrowableValueAccessibleObservable = ThrowableValueAccessible & ObservableConvertibleType

/// Represents accessible to throwable value
public protocol ThrowableValueAccessible {
    associatedtype E
    func throwableValue() throws -> E
}
