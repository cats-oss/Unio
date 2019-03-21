//
//  BehaviorSubjectType.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/20.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxSwift

/// Represents BehaviorSubject
public protocol BehaviorSubjectType: ThrowableValueAccessible, ObservableConvertibleType {}

extension BehaviorSubject: BehaviorSubjectType {
    
    public func throwableValue() throws -> Element {
        return try value()
    }
}
