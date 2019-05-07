//
//  AcceptableRelay.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/20.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// Represents acceptable
public protocol AcceptableRelay {
    associatedtype Element
    func accept(_ event: Element)
}
