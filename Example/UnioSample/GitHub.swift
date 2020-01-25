//
//  GitHub.swift
//  UnioSample
//
//  Created by marty-suzuki on 2019/03/21.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import Unio

enum GitHub {

    struct ItemsResponse<T: Decodable>: Decodable {
        let items: [T]
    }

    struct Repository: Decodable, Equatable {
        let name: String
        let fullName: String
        let htmlUrl: URL
    }
}

typealias UnioStream<Logic: LogicType> = SR12081.UnioStream<Logic>
