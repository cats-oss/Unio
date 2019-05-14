//
//  DynamicMemberLookupAdapter.swift
//  Unio
//
//  Created by marty-suzuki on 2019/05/14.
//  Copyright © 2019 tv.abema. All rights reserved.
//

import Foundation
import RxSwift

#if swift(>=5.1)
public typealias DMLA = DynamicMemberLookupAdapter

public enum DynamicMemberLookupAdapter {

    @dynamicMemberLookup
    public struct Observables<T> {

        private let object: T

        init(_ object: T) {
            self.object = object
        }

        public subscript<O: ObservableConvertibleType>(dynamicMember member: KeyPath<T, O>) -> Observable<O.Element> {
            return object[keyPath: member].asObservable()
        }
    }

    @dynamicMemberLookup
    public struct Values<T> {

        private let object: T

        init(_ object: T) {
            self.object = object
        }

        public subscript<U: ValueAccessible>(dynamicMember member: KeyPath<T, U>) -> U.Element {
            return object[keyPath: member].value
        }
    }

    @dynamicMemberLookup
    public struct ThrowableValues<T> {

        private let object: T

        init(_ object: T) {
            self.object = object
        }

        public subscript<U: ThrowableValueAccessible>(dynamicMember member: KeyPath<T, U>) -> AnyThrowableValue<U.Element> {
            return AnyThrowableValue(object[keyPath: member])
        }
    }

    @dynamicMemberLookup
    public struct ReadOnlyReferences<Output: OutputType> {

        private let output: Relay<Output>

        init(_ output: Relay<Output>) {
            self.output = output
        }

        public subscript<T: ValueAccessible>(dynamicMember member: KeyPath<Output, T>) -> ReadOnly<T> {
            return ReadOnly(output, for: member)
        }

        public subscript<T: ThrowableValueAccessible>(dynamicMember member: KeyPath<Output, T>) -> ReadOnly<T> {
            return ReadOnly(output, for: member)
        }
    }
}
#endif
