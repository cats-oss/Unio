//
//  ExtraType.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/18.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// Represents extra dependencies of UnioStream.
public protocol ExtraType {}

/// Represents no extra.
public struct NoExtra: ExtraType {
    public init() {}
}
