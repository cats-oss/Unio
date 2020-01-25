//
//  SR12081Tests.swift
//  UnioTests
//
//  Created by marty-suzuki on 2020/01/25.
//  Copyright © 2020 tv.abema. All rights reserved.
//

import XCTest

class SR12081Tests: XCTestCase {

    func testIsNotCrashed() {
        let value = SR12081Check.Stream1(input: .init(), state: .init(), extra: .init()).output.intValue.value
        XCTAssertEqual(value, 1)
    }
}
