//
//  DynamicMemberLookupAdapter.swift
//  Unio
//
//  Created by marty-suzuki on 2019/05/14.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxSwift

public typealias DMLA = DynamicMemberLookupAdapter

public enum DynamicMemberLookupAdapter {

    @dynamicMemberLookup
    public final class Observables<T> {

        private let object: T

        init(_ object: T) {
            self.object = object
        }

        public subscript<O: ObservableConvertibleType>(dynamicMember keyPath: KeyPath<T, O>) -> Observable<O.Element> {
            return object[keyPath: keyPath].asObservable()
        }
    }

    @dynamicMemberLookup
    public final class Properties<Output: OutputType> {

        private let output: Relay<Output>

        init(_ output: Relay<Output>) {
            self.output = output
        }

        public subscript<T: ValueAccessibleObservable>(dynamicMember keyPath: KeyPath<Output, T>) -> Property<T.Element> {
            return Property(output, for: keyPath)
        }

        public subscript<T: ThrowableValueAccessibleObservable>(dynamicMember keyPath: KeyPath<Output, T>) -> ThrowableProperty<T.Element> {
            return ThrowableProperty(output, for: keyPath)
        }
    }
}

#if swift(<5.1)
extension DMLA.Observables {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}

extension DMLA.Properties {

    @available(*, unavailable)
    subscript(dynamicMember member: String) -> Never {
        fatalError("must not be accessible")
    }
}
#endif
