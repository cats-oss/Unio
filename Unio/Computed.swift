//
//  Computed.swift
//  Unio
//
//  Created by marty-suzuki on 2020/2/19.
//  Copyright © 2020 tv.abema. All rights reserved.
//

import Foundation

/// Represents computed property
public final class Computed<Element> {

    @inlinable
    public var value: Element {
        return getter()
    }

    @usableFromInline
    let getter: () -> Element

    public init(getter: @escaping () -> Element) {
        self.getter = getter
    }

    public init(capture element: Element) {
        self.getter = { [element] in element }
    }

    public init(_ computed: Computed<Element>) {
        self.getter = computed.getter
    }
}
