//
//  PublishRelayType.swift
//  Unio
//
//  Created by marty-suzuki on 2019/03/15.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift

/// Represents abstracted `PublishRelay`.
public protocol PublishRelayType: AcceptableRelay, ObservableConvertibleType {}

extension PublishRelay: PublishRelayType {}
