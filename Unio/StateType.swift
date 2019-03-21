//
//  StateType.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/17.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// Represents state retained by UnioStream.
public protocol StateType {}

/// Represents no state.
public struct NoState: StateType {
    public init() {}
}
