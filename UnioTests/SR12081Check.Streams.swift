//
//  HogeStreams.swift
//  UnioTests
//
//  Created by marty-suzuki on 2020/01/25.
//  Copyright © 2020 tv.abema. All rights reserved.
//

import RxRelay
import RxSwift
@testable import Unio

/// - seealso: https://bugs.swift.org/browse/SR-12081
enum SR12081Check {

    // If remove this comment out, becomes crashed on iOS 13.
    // typealias UnioStream<Logic: LogicType> = SR12081.UnioStream<Logic>

    final class Stream1: UnioStream<Stream1> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 1) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream2: UnioStream<Stream2> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 2) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream3: UnioStream<Stream3> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 3) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream4: UnioStream<Stream4> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 4) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream5: UnioStream<Stream5> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 5) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream6: UnioStream<Stream6> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 6) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream7: UnioStream<Stream7> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 7) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream8: UnioStream<Stream8> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 8) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream9: UnioStream<Stream9> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 9) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream10: UnioStream<Stream10> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 10) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream11: UnioStream<Stream11> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 11) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream12: UnioStream<Stream12> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 12) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream13: UnioStream<Stream13> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 13) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream14: UnioStream<Stream14> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 14) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream15: UnioStream<Stream15> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 15) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream16: UnioStream<Stream16> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 16) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream17: UnioStream<Stream17> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 17) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream18: UnioStream<Stream18> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 18) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream19: UnioStream<Stream19> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 19) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream20: UnioStream<Stream20> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 20) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream21: UnioStream<Stream21> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 21) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream22: UnioStream<Stream22> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 22) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream23: UnioStream<Stream23> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 23) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream24: UnioStream<Stream24> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 24) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream25: UnioStream<Stream25> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 25) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream26: UnioStream<Stream26> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 26) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream27: UnioStream<Stream27> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 27) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream28: UnioStream<Stream28> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 28) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream29: UnioStream<Stream29> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 29) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream30: UnioStream<Stream30> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 30) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream31: UnioStream<Stream31> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 31) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream32: UnioStream<Stream32> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 32) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream33: UnioStream<Stream33> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 33) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream34: UnioStream<Stream34> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 34) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream35: UnioStream<Stream35> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 35) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream36: UnioStream<Stream36> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 36) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream37: UnioStream<Stream37> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 37) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream38: UnioStream<Stream38> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 38) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream39: UnioStream<Stream39> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 39) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream40: UnioStream<Stream40> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 40) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream41: UnioStream<Stream41> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 41) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream42: UnioStream<Stream42> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 42) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream43: UnioStream<Stream43> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 43) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream44: UnioStream<Stream44> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 44) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream45: UnioStream<Stream45> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 45) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream46: UnioStream<Stream46> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 46) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream47: UnioStream<Stream47> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 47) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream48: UnioStream<Stream48> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 48) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream49: UnioStream<Stream49> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 49) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream50: UnioStream<Stream50> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 50) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream51: UnioStream<Stream51> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 51) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream52: UnioStream<Stream52> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 52) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream53: UnioStream<Stream53> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 53) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream54: UnioStream<Stream54> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 54) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream55: UnioStream<Stream55> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 55) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream56: UnioStream<Stream56> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 56) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream57: UnioStream<Stream57> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 57) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream58: UnioStream<Stream58> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 58) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream59: UnioStream<Stream59> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 59) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream60: UnioStream<Stream60> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 60) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream61: UnioStream<Stream61> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 61) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream62: UnioStream<Stream62> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 62) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream63: UnioStream<Stream63> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 63) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream64: UnioStream<Stream64> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 64) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream65: UnioStream<Stream65> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 65) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream66: UnioStream<Stream66> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 66) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream67: UnioStream<Stream67> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 67) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream68: UnioStream<Stream68> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 68) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream69: UnioStream<Stream69> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 69) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream70: UnioStream<Stream70> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 70) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream71: UnioStream<Stream71> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 71) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream72: UnioStream<Stream72> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 72) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream73: UnioStream<Stream73> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 73) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream74: UnioStream<Stream74> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 74) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream75: UnioStream<Stream75> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 75) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream76: UnioStream<Stream76> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 76) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream77: UnioStream<Stream77> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 77) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream78: UnioStream<Stream78> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 78) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream79: UnioStream<Stream79> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 79) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream80: UnioStream<Stream80> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 80) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream81: UnioStream<Stream81> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 81) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream82: UnioStream<Stream82> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 82) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream83: UnioStream<Stream83> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 83) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream84: UnioStream<Stream84> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 84) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream85: UnioStream<Stream85> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 85) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream86: UnioStream<Stream86> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 86) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream87: UnioStream<Stream87> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 87) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream88: UnioStream<Stream88> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 88) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream89: UnioStream<Stream89> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 89) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream90: UnioStream<Stream90> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 90) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream91: UnioStream<Stream91> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 91) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream92: UnioStream<Stream92> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 92) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream93: UnioStream<Stream93> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 93) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream94: UnioStream<Stream94> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 94) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream95: UnioStream<Stream95> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 95) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream96: UnioStream<Stream96> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 96) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream97: UnioStream<Stream97> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 97) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream98: UnioStream<Stream98> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 98) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream99: UnioStream<Stream99> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 99) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream100: UnioStream<Stream100> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 100) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream101: UnioStream<Stream101> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 101) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream102: UnioStream<Stream102> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 102) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream103: UnioStream<Stream103> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 103) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream104: UnioStream<Stream104> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 104) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream105: UnioStream<Stream105> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 105) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream106: UnioStream<Stream106> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 106) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream107: UnioStream<Stream107> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 107) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream108: UnioStream<Stream108> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 108) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream109: UnioStream<Stream109> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 109) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream110: UnioStream<Stream110> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 110) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream111: UnioStream<Stream111> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 111) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream112: UnioStream<Stream112> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 112) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream113: UnioStream<Stream113> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 113) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream114: UnioStream<Stream114> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 114) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream115: UnioStream<Stream115> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 115) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream116: UnioStream<Stream116> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 116) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream117: UnioStream<Stream117> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 117) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream118: UnioStream<Stream118> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 118) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream119: UnioStream<Stream119> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 119) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream120: UnioStream<Stream120> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 120) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream121: UnioStream<Stream121> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 121) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream122: UnioStream<Stream122> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 122) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream123: UnioStream<Stream123> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 123) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream124: UnioStream<Stream124> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 124) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream125: UnioStream<Stream125> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 125) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream126: UnioStream<Stream126> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 126) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream127: UnioStream<Stream127> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 127) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream128: UnioStream<Stream128> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 128) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream129: UnioStream<Stream129> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 129) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream130: UnioStream<Stream130> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 130) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream131: UnioStream<Stream131> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 131) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream132: UnioStream<Stream132> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 132) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream133: UnioStream<Stream133> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 133) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream134: UnioStream<Stream134> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 134) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream135: UnioStream<Stream135> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 135) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream136: UnioStream<Stream136> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 136) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream137: UnioStream<Stream137> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 137) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream138: UnioStream<Stream138> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 138) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream139: UnioStream<Stream139> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 139) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream140: UnioStream<Stream140> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 140) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream141: UnioStream<Stream141> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 141) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream142: UnioStream<Stream142> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 142) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream143: UnioStream<Stream143> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 143) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream144: UnioStream<Stream144> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 144) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream145: UnioStream<Stream145> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 145) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream146: UnioStream<Stream146> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 146) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream147: UnioStream<Stream147> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 147) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream148: UnioStream<Stream148> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 148) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream149: UnioStream<Stream149> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 149) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream150: UnioStream<Stream150> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 150) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream151: UnioStream<Stream151> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 151) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream152: UnioStream<Stream152> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 152) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream153: UnioStream<Stream153> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 153) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream154: UnioStream<Stream154> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 154) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream155: UnioStream<Stream155> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 155) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream156: UnioStream<Stream156> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 156) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream157: UnioStream<Stream157> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 157) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream158: UnioStream<Stream158> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 158) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream159: UnioStream<Stream159> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 159) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream160: UnioStream<Stream160> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 160) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream161: UnioStream<Stream161> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 161) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream162: UnioStream<Stream162> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 162) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream163: UnioStream<Stream163> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 163) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream164: UnioStream<Stream164> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 164) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream165: UnioStream<Stream165> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 165) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream166: UnioStream<Stream166> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 166) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream167: UnioStream<Stream167> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 167) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream168: UnioStream<Stream168> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 168) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream169: UnioStream<Stream169> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 169) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream170: UnioStream<Stream170> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 170) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream171: UnioStream<Stream171> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 171) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream172: UnioStream<Stream172> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 172) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream173: UnioStream<Stream173> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 173) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream174: UnioStream<Stream174> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 174) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream175: UnioStream<Stream175> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 175) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream176: UnioStream<Stream176> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 176) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream177: UnioStream<Stream177> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 177) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream178: UnioStream<Stream178> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 178) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream179: UnioStream<Stream179> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 179) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream180: UnioStream<Stream180> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 180) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream181: UnioStream<Stream181> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 181) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream182: UnioStream<Stream182> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 182) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream183: UnioStream<Stream183> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 183) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream184: UnioStream<Stream184> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 184) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream185: UnioStream<Stream185> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 185) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream186: UnioStream<Stream186> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 186) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream187: UnioStream<Stream187> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 187) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream188: UnioStream<Stream188> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 188) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream189: UnioStream<Stream189> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 189) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream190: UnioStream<Stream190> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 190) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream191: UnioStream<Stream191> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 191) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream192: UnioStream<Stream192> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 192) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream193: UnioStream<Stream193> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 193) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream194: UnioStream<Stream194> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 194) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream195: UnioStream<Stream195> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 195) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream196: UnioStream<Stream196> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 196) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream197: UnioStream<Stream197> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 197) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream198: UnioStream<Stream198> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 198) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream199: UnioStream<Stream199> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 199) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream200: UnioStream<Stream200> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 200) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream201: UnioStream<Stream201> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 201) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream202: UnioStream<Stream202> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 202) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream203: UnioStream<Stream203> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 203) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream204: UnioStream<Stream204> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 204) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream205: UnioStream<Stream205> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 205) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream206: UnioStream<Stream206> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 206) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream207: UnioStream<Stream207> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 207) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream208: UnioStream<Stream208> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 208) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream209: UnioStream<Stream209> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 209) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream210: UnioStream<Stream210> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 210) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream211: UnioStream<Stream211> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 211) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream212: UnioStream<Stream212> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 212) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream213: UnioStream<Stream213> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 213) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream214: UnioStream<Stream214> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 214) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream215: UnioStream<Stream215> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 215) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream216: UnioStream<Stream216> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 216) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream217: UnioStream<Stream217> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 217) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream218: UnioStream<Stream218> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 218) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream219: UnioStream<Stream219> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 219) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream220: UnioStream<Stream220> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 220) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream221: UnioStream<Stream221> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 221) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream222: UnioStream<Stream222> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 222) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream223: UnioStream<Stream223> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 223) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream224: UnioStream<Stream224> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 224) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream225: UnioStream<Stream225> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 225) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream226: UnioStream<Stream226> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 226) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream227: UnioStream<Stream227> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 227) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream228: UnioStream<Stream228> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 228) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream229: UnioStream<Stream229> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 229) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream230: UnioStream<Stream230> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 230) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream231: UnioStream<Stream231> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 231) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream232: UnioStream<Stream232> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 232) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream233: UnioStream<Stream233> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 233) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream234: UnioStream<Stream234> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 234) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream235: UnioStream<Stream235> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 235) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream236: UnioStream<Stream236> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 236) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream237: UnioStream<Stream237> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 237) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream238: UnioStream<Stream238> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 238) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream239: UnioStream<Stream239> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 239) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream240: UnioStream<Stream240> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 240) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream241: UnioStream<Stream241> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 241) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream242: UnioStream<Stream242> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 242) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream243: UnioStream<Stream243> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 243) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream244: UnioStream<Stream244> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 244) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream245: UnioStream<Stream245> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 245) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream246: UnioStream<Stream246> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 246) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream247: UnioStream<Stream247> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 247) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream248: UnioStream<Stream248> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 248) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream249: UnioStream<Stream249> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 249) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream250: UnioStream<Stream250> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 250) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream251: UnioStream<Stream251> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 251) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream252: UnioStream<Stream252> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 252) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream253: UnioStream<Stream253> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 253) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream254: UnioStream<Stream254> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 254) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream255: UnioStream<Stream255> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 255) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream256: UnioStream<Stream256> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 256) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream257: UnioStream<Stream257> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 257) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream258: UnioStream<Stream258> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 258) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream259: UnioStream<Stream259> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 259) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream260: UnioStream<Stream260> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 260) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream261: UnioStream<Stream261> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 261) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream262: UnioStream<Stream262> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 262) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream263: UnioStream<Stream263> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 263) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream264: UnioStream<Stream264> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 264) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream265: UnioStream<Stream265> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 265) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream266: UnioStream<Stream266> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 266) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream267: UnioStream<Stream267> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 267) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream268: UnioStream<Stream268> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 268) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream269: UnioStream<Stream269> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 269) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream270: UnioStream<Stream270> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 270) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream271: UnioStream<Stream271> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 271) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream272: UnioStream<Stream272> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 272) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream273: UnioStream<Stream273> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 273) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream274: UnioStream<Stream274> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 274) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream275: UnioStream<Stream275> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 275) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream276: UnioStream<Stream276> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 276) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream277: UnioStream<Stream277> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 277) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream278: UnioStream<Stream278> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 278) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream279: UnioStream<Stream279> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 279) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream280: UnioStream<Stream280> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 280) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream281: UnioStream<Stream281> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 281) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream282: UnioStream<Stream282> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 282) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream283: UnioStream<Stream283> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 283) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream284: UnioStream<Stream284> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 284) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream285: UnioStream<Stream285> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 285) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream286: UnioStream<Stream286> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 286) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream287: UnioStream<Stream287> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 287) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream288: UnioStream<Stream288> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 288) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream289: UnioStream<Stream289> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 289) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream290: UnioStream<Stream290> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 290) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream291: UnioStream<Stream291> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 291) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream292: UnioStream<Stream292> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 292) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream293: UnioStream<Stream293> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 293) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream294: UnioStream<Stream294> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 294) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream295: UnioStream<Stream295> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 295) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream296: UnioStream<Stream296> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 296) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream297: UnioStream<Stream297> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 297) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream298: UnioStream<Stream298> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 298) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream299: UnioStream<Stream299> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 299) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream300: UnioStream<Stream300> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 300) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream301: UnioStream<Stream301> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 301) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream302: UnioStream<Stream302> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 302) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream303: UnioStream<Stream303> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 303) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream304: UnioStream<Stream304> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 304) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream305: UnioStream<Stream305> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 305) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream306: UnioStream<Stream306> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 306) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream307: UnioStream<Stream307> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 307) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream308: UnioStream<Stream308> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 308) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream309: UnioStream<Stream309> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 309) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream310: UnioStream<Stream310> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 310) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream311: UnioStream<Stream311> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 311) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream312: UnioStream<Stream312> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 312) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream313: UnioStream<Stream313> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 313) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream314: UnioStream<Stream314> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 314) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream315: UnioStream<Stream315> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 315) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream316: UnioStream<Stream316> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 316) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream317: UnioStream<Stream317> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 317) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream318: UnioStream<Stream318> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 318) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream319: UnioStream<Stream319> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 319) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream320: UnioStream<Stream320> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 320) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream321: UnioStream<Stream321> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 321) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream322: UnioStream<Stream322> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 322) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream323: UnioStream<Stream323> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 323) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream324: UnioStream<Stream324> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 324) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream325: UnioStream<Stream325> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 325) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream326: UnioStream<Stream326> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 326) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream327: UnioStream<Stream327> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 327) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream328: UnioStream<Stream328> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 328) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream329: UnioStream<Stream329> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 329) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream330: UnioStream<Stream330> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 330) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream331: UnioStream<Stream331> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 331) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream332: UnioStream<Stream332> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 332) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream333: UnioStream<Stream333> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 333) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream334: UnioStream<Stream334> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 334) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream335: UnioStream<Stream335> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 335) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream336: UnioStream<Stream336> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 336) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream337: UnioStream<Stream337> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 337) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream338: UnioStream<Stream338> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 338) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream339: UnioStream<Stream339> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 339) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream340: UnioStream<Stream340> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 340) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream341: UnioStream<Stream341> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 341) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream342: UnioStream<Stream342> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 342) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream343: UnioStream<Stream343> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 343) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream344: UnioStream<Stream344> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 344) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream345: UnioStream<Stream345> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 345) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream346: UnioStream<Stream346> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 346) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream347: UnioStream<Stream347> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 347) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream348: UnioStream<Stream348> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 348) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream349: UnioStream<Stream349> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 349) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream350: UnioStream<Stream350> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 350) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream351: UnioStream<Stream351> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 351) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream352: UnioStream<Stream352> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 352) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream353: UnioStream<Stream353> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 353) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream354: UnioStream<Stream354> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 354) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream355: UnioStream<Stream355> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 355) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream356: UnioStream<Stream356> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 356) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream357: UnioStream<Stream357> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 357) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream358: UnioStream<Stream358> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 358) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream359: UnioStream<Stream359> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 359) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream360: UnioStream<Stream360> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 360) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream361: UnioStream<Stream361> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 361) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream362: UnioStream<Stream362> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 362) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream363: UnioStream<Stream363> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 363) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream364: UnioStream<Stream364> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 364) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream365: UnioStream<Stream365> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 365) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream366: UnioStream<Stream366> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 366) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream367: UnioStream<Stream367> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 367) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream368: UnioStream<Stream368> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 368) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream369: UnioStream<Stream369> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 369) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream370: UnioStream<Stream370> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 370) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream371: UnioStream<Stream371> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 371) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream372: UnioStream<Stream372> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 372) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream373: UnioStream<Stream373> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 373) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream374: UnioStream<Stream374> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 374) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream375: UnioStream<Stream375> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 375) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream376: UnioStream<Stream376> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 376) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream377: UnioStream<Stream377> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 377) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream378: UnioStream<Stream378> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 378) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream379: UnioStream<Stream379> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 379) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream380: UnioStream<Stream380> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 380) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream381: UnioStream<Stream381> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 381) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream382: UnioStream<Stream382> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 382) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream383: UnioStream<Stream383> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 383) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream384: UnioStream<Stream384> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 384) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream385: UnioStream<Stream385> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 385) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream386: UnioStream<Stream386> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 386) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream387: UnioStream<Stream387> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 387) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream388: UnioStream<Stream388> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 388) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream389: UnioStream<Stream389> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 389) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream390: UnioStream<Stream390> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 390) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream391: UnioStream<Stream391> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 391) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream392: UnioStream<Stream392> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 392) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream393: UnioStream<Stream393> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 393) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream394: UnioStream<Stream394> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 394) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream395: UnioStream<Stream395> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 395) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream396: UnioStream<Stream396> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 396) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream397: UnioStream<Stream397> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 397) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream398: UnioStream<Stream398> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 398) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream399: UnioStream<Stream399> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 399) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream400: UnioStream<Stream400> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 400) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream401: UnioStream<Stream401> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 401) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream402: UnioStream<Stream402> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 402) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream403: UnioStream<Stream403> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 403) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream404: UnioStream<Stream404> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 404) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream405: UnioStream<Stream405> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 405) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream406: UnioStream<Stream406> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 406) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream407: UnioStream<Stream407> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 407) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream408: UnioStream<Stream408> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 408) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream409: UnioStream<Stream409> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 409) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream410: UnioStream<Stream410> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 410) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream411: UnioStream<Stream411> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 411) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream412: UnioStream<Stream412> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 412) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream413: UnioStream<Stream413> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 413) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream414: UnioStream<Stream414> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 414) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream415: UnioStream<Stream415> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 415) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream416: UnioStream<Stream416> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 416) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream417: UnioStream<Stream417> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 417) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream418: UnioStream<Stream418> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 418) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream419: UnioStream<Stream419> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 419) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream420: UnioStream<Stream420> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 420) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream421: UnioStream<Stream421> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 421) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream422: UnioStream<Stream422> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 422) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream423: UnioStream<Stream423> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 423) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream424: UnioStream<Stream424> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 424) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream425: UnioStream<Stream425> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 425) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream426: UnioStream<Stream426> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 426) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream427: UnioStream<Stream427> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 427) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream428: UnioStream<Stream428> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 428) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream429: UnioStream<Stream429> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 429) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream430: UnioStream<Stream430> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 430) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream431: UnioStream<Stream431> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 431) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream432: UnioStream<Stream432> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 432) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream433: UnioStream<Stream433> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 433) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream434: UnioStream<Stream434> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 434) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream435: UnioStream<Stream435> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 435) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream436: UnioStream<Stream436> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 436) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream437: UnioStream<Stream437> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 437) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream438: UnioStream<Stream438> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 438) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream439: UnioStream<Stream439> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 439) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream440: UnioStream<Stream440> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 440) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream441: UnioStream<Stream441> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 441) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream442: UnioStream<Stream442> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 442) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream443: UnioStream<Stream443> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 443) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream444: UnioStream<Stream444> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 444) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream445: UnioStream<Stream445> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 445) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream446: UnioStream<Stream446> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 446) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream447: UnioStream<Stream447> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 447) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream448: UnioStream<Stream448> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 448) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream449: UnioStream<Stream449> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 449) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream450: UnioStream<Stream450> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 450) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream451: UnioStream<Stream451> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 451) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream452: UnioStream<Stream452> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 452) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream453: UnioStream<Stream453> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 453) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream454: UnioStream<Stream454> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 454) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream455: UnioStream<Stream455> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 455) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream456: UnioStream<Stream456> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 456) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream457: UnioStream<Stream457> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 457) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream458: UnioStream<Stream458> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 458) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream459: UnioStream<Stream459> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 459) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream460: UnioStream<Stream460> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 460) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream461: UnioStream<Stream461> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 461) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream462: UnioStream<Stream462> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 462) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream463: UnioStream<Stream463> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 463) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream464: UnioStream<Stream464> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 464) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream465: UnioStream<Stream465> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 465) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream466: UnioStream<Stream466> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 466) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream467: UnioStream<Stream467> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 467) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream468: UnioStream<Stream468> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 468) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream469: UnioStream<Stream469> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 469) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream470: UnioStream<Stream470> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 470) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream471: UnioStream<Stream471> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 471) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream472: UnioStream<Stream472> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 472) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream473: UnioStream<Stream473> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 473) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream474: UnioStream<Stream474> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 474) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream475: UnioStream<Stream475> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 475) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream476: UnioStream<Stream476> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 476) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream477: UnioStream<Stream477> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 477) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream478: UnioStream<Stream478> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 478) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream479: UnioStream<Stream479> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 479) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream480: UnioStream<Stream480> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 480) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream481: UnioStream<Stream481> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 481) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream482: UnioStream<Stream482> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 482) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream483: UnioStream<Stream483> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 483) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream484: UnioStream<Stream484> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 484) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream485: UnioStream<Stream485> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 485) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream486: UnioStream<Stream486> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 486) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream487: UnioStream<Stream487> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 487) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream488: UnioStream<Stream488> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 488) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream489: UnioStream<Stream489> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 489) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream490: UnioStream<Stream490> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 490) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream491: UnioStream<Stream491> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 491) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream492: UnioStream<Stream492> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 492) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream493: UnioStream<Stream493> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 493) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream494: UnioStream<Stream494> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 494) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream495: UnioStream<Stream495> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 495) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream496: UnioStream<Stream496> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 496) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream497: UnioStream<Stream497> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 497) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream498: UnioStream<Stream498> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 498) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream499: UnioStream<Stream499> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 499) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream500: UnioStream<Stream500> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 500) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream501: UnioStream<Stream501> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 501) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream502: UnioStream<Stream502> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 502) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream503: UnioStream<Stream503> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 503) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream504: UnioStream<Stream504> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 504) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream505: UnioStream<Stream505> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 505) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream506: UnioStream<Stream506> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 506) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream507: UnioStream<Stream507> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 507) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream508: UnioStream<Stream508> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 508) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream509: UnioStream<Stream509> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 509) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream510: UnioStream<Stream510> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 510) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream511: UnioStream<Stream511> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 511) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream512: UnioStream<Stream512> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 512) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream513: UnioStream<Stream513> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 513) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream514: UnioStream<Stream514> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 514) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream515: UnioStream<Stream515> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 515) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream516: UnioStream<Stream516> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 516) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream517: UnioStream<Stream517> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 517) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream518: UnioStream<Stream518> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 518) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream519: UnioStream<Stream519> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 519) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream520: UnioStream<Stream520> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 520) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream521: UnioStream<Stream521> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 521) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream522: UnioStream<Stream522> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 522) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream523: UnioStream<Stream523> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 523) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream524: UnioStream<Stream524> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 524) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream525: UnioStream<Stream525> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 525) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream526: UnioStream<Stream526> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 526) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream527: UnioStream<Stream527> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 527) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream528: UnioStream<Stream528> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 528) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream529: UnioStream<Stream529> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 529) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream530: UnioStream<Stream530> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 530) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream531: UnioStream<Stream531> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 531) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream532: UnioStream<Stream532> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 532) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream533: UnioStream<Stream533> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 533) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream534: UnioStream<Stream534> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 534) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream535: UnioStream<Stream535> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 535) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream536: UnioStream<Stream536> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 536) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream537: UnioStream<Stream537> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 537) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream538: UnioStream<Stream538> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 538) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream539: UnioStream<Stream539> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 539) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream540: UnioStream<Stream540> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 540) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream541: UnioStream<Stream541> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 541) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream542: UnioStream<Stream542> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 542) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream543: UnioStream<Stream543> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 543) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream544: UnioStream<Stream544> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 544) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream545: UnioStream<Stream545> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 545) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream546: UnioStream<Stream546> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 546) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream547: UnioStream<Stream547> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 547) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream548: UnioStream<Stream548> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 548) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream549: UnioStream<Stream549> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 549) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream550: UnioStream<Stream550> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 550) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream551: UnioStream<Stream551> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 551) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream552: UnioStream<Stream552> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 552) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream553: UnioStream<Stream553> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 553) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream554: UnioStream<Stream554> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 554) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream555: UnioStream<Stream555> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 555) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream556: UnioStream<Stream556> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 556) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream557: UnioStream<Stream557> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 557) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream558: UnioStream<Stream558> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 558) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream559: UnioStream<Stream559> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 559) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream560: UnioStream<Stream560> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 560) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream561: UnioStream<Stream561> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 561) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream562: UnioStream<Stream562> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 562) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream563: UnioStream<Stream563> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 563) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream564: UnioStream<Stream564> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 564) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream565: UnioStream<Stream565> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 565) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream566: UnioStream<Stream566> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 566) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream567: UnioStream<Stream567> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 567) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream568: UnioStream<Stream568> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 568) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream569: UnioStream<Stream569> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 569) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream570: UnioStream<Stream570> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 570) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream571: UnioStream<Stream571> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 571) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream572: UnioStream<Stream572> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 572) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream573: UnioStream<Stream573> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 573) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream574: UnioStream<Stream574> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 574) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream575: UnioStream<Stream575> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 575) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream576: UnioStream<Stream576> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 576) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream577: UnioStream<Stream577> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 577) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream578: UnioStream<Stream578> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 578) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream579: UnioStream<Stream579> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 579) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream580: UnioStream<Stream580> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 580) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream581: UnioStream<Stream581> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 581) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream582: UnioStream<Stream582> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 582) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream583: UnioStream<Stream583> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 583) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream584: UnioStream<Stream584> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 584) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream585: UnioStream<Stream585> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 585) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream586: UnioStream<Stream586> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 586) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream587: UnioStream<Stream587> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 587) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream588: UnioStream<Stream588> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 588) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream589: UnioStream<Stream589> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 589) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream590: UnioStream<Stream590> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 590) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream591: UnioStream<Stream591> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 591) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream592: UnioStream<Stream592> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 592) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream593: UnioStream<Stream593> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 593) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream594: UnioStream<Stream594> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 594) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream595: UnioStream<Stream595> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 595) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream596: UnioStream<Stream596> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 596) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream597: UnioStream<Stream597> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 597) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream598: UnioStream<Stream598> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 598) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream599: UnioStream<Stream599> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 599) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream600: UnioStream<Stream600> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 600) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream601: UnioStream<Stream601> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 601) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream602: UnioStream<Stream602> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 602) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream603: UnioStream<Stream603> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 603) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream604: UnioStream<Stream604> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 604) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream605: UnioStream<Stream605> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 605) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream606: UnioStream<Stream606> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 606) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream607: UnioStream<Stream607> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 607) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream608: UnioStream<Stream608> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 608) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream609: UnioStream<Stream609> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 609) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream610: UnioStream<Stream610> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 610) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream611: UnioStream<Stream611> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 611) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream612: UnioStream<Stream612> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 612) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream613: UnioStream<Stream613> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 613) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream614: UnioStream<Stream614> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 614) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream615: UnioStream<Stream615> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 615) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream616: UnioStream<Stream616> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 616) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream617: UnioStream<Stream617> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 617) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream618: UnioStream<Stream618> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 618) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream619: UnioStream<Stream619> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 619) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream620: UnioStream<Stream620> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 620) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream621: UnioStream<Stream621> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 621) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream622: UnioStream<Stream622> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 622) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream623: UnioStream<Stream623> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 623) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream624: UnioStream<Stream624> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 624) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream625: UnioStream<Stream625> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 625) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream626: UnioStream<Stream626> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 626) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream627: UnioStream<Stream627> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 627) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream628: UnioStream<Stream628> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 628) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream629: UnioStream<Stream629> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 629) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream630: UnioStream<Stream630> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 630) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream631: UnioStream<Stream631> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 631) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream632: UnioStream<Stream632> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 632) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream633: UnioStream<Stream633> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 633) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream634: UnioStream<Stream634> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 634) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream635: UnioStream<Stream635> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 635) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream636: UnioStream<Stream636> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 636) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream637: UnioStream<Stream637> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 637) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream638: UnioStream<Stream638> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 638) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream639: UnioStream<Stream639> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 639) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream640: UnioStream<Stream640> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 640) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream641: UnioStream<Stream641> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 641) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream642: UnioStream<Stream642> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 642) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream643: UnioStream<Stream643> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 643) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream644: UnioStream<Stream644> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 644) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream645: UnioStream<Stream645> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 645) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream646: UnioStream<Stream646> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 646) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream647: UnioStream<Stream647> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 647) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream648: UnioStream<Stream648> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 648) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream649: UnioStream<Stream649> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 649) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream650: UnioStream<Stream650> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 650) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream651: UnioStream<Stream651> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 651) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream652: UnioStream<Stream652> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 652) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream653: UnioStream<Stream653> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 653) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream654: UnioStream<Stream654> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 654) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream655: UnioStream<Stream655> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 655) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream656: UnioStream<Stream656> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 656) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream657: UnioStream<Stream657> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 657) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream658: UnioStream<Stream658> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 658) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream659: UnioStream<Stream659> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 659) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream660: UnioStream<Stream660> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 660) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream661: UnioStream<Stream661> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 661) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream662: UnioStream<Stream662> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 662) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream663: UnioStream<Stream663> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 663) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream664: UnioStream<Stream664> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 664) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream665: UnioStream<Stream665> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 665) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream666: UnioStream<Stream666> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 666) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream667: UnioStream<Stream667> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 667) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream668: UnioStream<Stream668> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 668) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream669: UnioStream<Stream669> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 669) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream670: UnioStream<Stream670> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 670) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream671: UnioStream<Stream671> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 671) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream672: UnioStream<Stream672> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 672) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream673: UnioStream<Stream673> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 673) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream674: UnioStream<Stream674> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 674) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream675: UnioStream<Stream675> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 675) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream676: UnioStream<Stream676> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 676) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream677: UnioStream<Stream677> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 677) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream678: UnioStream<Stream678> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 678) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream679: UnioStream<Stream679> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 679) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream680: UnioStream<Stream680> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 680) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream681: UnioStream<Stream681> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 681) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream682: UnioStream<Stream682> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 682) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream683: UnioStream<Stream683> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 683) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream684: UnioStream<Stream684> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 684) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream685: UnioStream<Stream685> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 685) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream686: UnioStream<Stream686> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 686) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream687: UnioStream<Stream687> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 687) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream688: UnioStream<Stream688> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 688) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream689: UnioStream<Stream689> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 689) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream690: UnioStream<Stream690> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 690) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream691: UnioStream<Stream691> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 691) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream692: UnioStream<Stream692> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 692) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream693: UnioStream<Stream693> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 693) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream694: UnioStream<Stream694> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 694) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream695: UnioStream<Stream695> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 695) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream696: UnioStream<Stream696> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 696) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream697: UnioStream<Stream697> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 697) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream698: UnioStream<Stream698> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 698) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream699: UnioStream<Stream699> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 699) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream700: UnioStream<Stream700> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 700) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream701: UnioStream<Stream701> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 701) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream702: UnioStream<Stream702> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 702) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream703: UnioStream<Stream703> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 703) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream704: UnioStream<Stream704> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 704) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream705: UnioStream<Stream705> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 705) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream706: UnioStream<Stream706> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 706) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream707: UnioStream<Stream707> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 707) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream708: UnioStream<Stream708> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 708) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream709: UnioStream<Stream709> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 709) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream710: UnioStream<Stream710> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 710) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream711: UnioStream<Stream711> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 711) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream712: UnioStream<Stream712> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 712) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream713: UnioStream<Stream713> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 713) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream714: UnioStream<Stream714> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 714) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream715: UnioStream<Stream715> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 715) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream716: UnioStream<Stream716> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 716) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream717: UnioStream<Stream717> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 717) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream718: UnioStream<Stream718> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 718) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream719: UnioStream<Stream719> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 719) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream720: UnioStream<Stream720> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 720) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream721: UnioStream<Stream721> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 721) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream722: UnioStream<Stream722> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 722) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream723: UnioStream<Stream723> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 723) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream724: UnioStream<Stream724> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 724) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream725: UnioStream<Stream725> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 725) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream726: UnioStream<Stream726> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 726) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream727: UnioStream<Stream727> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 727) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream728: UnioStream<Stream728> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 728) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream729: UnioStream<Stream729> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 729) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream730: UnioStream<Stream730> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 730) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream731: UnioStream<Stream731> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 731) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream732: UnioStream<Stream732> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 732) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream733: UnioStream<Stream733> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 733) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream734: UnioStream<Stream734> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 734) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream735: UnioStream<Stream735> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 735) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream736: UnioStream<Stream736> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 736) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream737: UnioStream<Stream737> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 737) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream738: UnioStream<Stream738> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 738) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream739: UnioStream<Stream739> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 739) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream740: UnioStream<Stream740> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 740) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream741: UnioStream<Stream741> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 741) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream742: UnioStream<Stream742> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 742) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream743: UnioStream<Stream743> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 743) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream744: UnioStream<Stream744> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 744) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream745: UnioStream<Stream745> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 745) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream746: UnioStream<Stream746> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 746) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream747: UnioStream<Stream747> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 747) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream748: UnioStream<Stream748> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 748) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream749: UnioStream<Stream749> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 749) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream750: UnioStream<Stream750> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 750) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream751: UnioStream<Stream751> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 751) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream752: UnioStream<Stream752> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 752) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream753: UnioStream<Stream753> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 753) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream754: UnioStream<Stream754> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 754) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream755: UnioStream<Stream755> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 755) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream756: UnioStream<Stream756> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 756) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream757: UnioStream<Stream757> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 757) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream758: UnioStream<Stream758> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 758) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream759: UnioStream<Stream759> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 759) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream760: UnioStream<Stream760> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 760) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream761: UnioStream<Stream761> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 761) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream762: UnioStream<Stream762> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 762) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream763: UnioStream<Stream763> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 763) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream764: UnioStream<Stream764> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 764) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream765: UnioStream<Stream765> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 765) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream766: UnioStream<Stream766> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 766) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream767: UnioStream<Stream767> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 767) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream768: UnioStream<Stream768> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 768) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream769: UnioStream<Stream769> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 769) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream770: UnioStream<Stream770> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 770) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream771: UnioStream<Stream771> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 771) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream772: UnioStream<Stream772> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 772) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream773: UnioStream<Stream773> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 773) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream774: UnioStream<Stream774> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 774) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream775: UnioStream<Stream775> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 775) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream776: UnioStream<Stream776> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 776) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream777: UnioStream<Stream777> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 777) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream778: UnioStream<Stream778> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 778) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream779: UnioStream<Stream779> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 779) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream780: UnioStream<Stream780> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 780) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream781: UnioStream<Stream781> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 781) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream782: UnioStream<Stream782> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 782) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream783: UnioStream<Stream783> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 783) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream784: UnioStream<Stream784> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 784) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream785: UnioStream<Stream785> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 785) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream786: UnioStream<Stream786> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 786) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream787: UnioStream<Stream787> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 787) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream788: UnioStream<Stream788> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 788) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream789: UnioStream<Stream789> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 789) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream790: UnioStream<Stream790> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 790) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream791: UnioStream<Stream791> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 791) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream792: UnioStream<Stream792> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 792) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream793: UnioStream<Stream793> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 793) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream794: UnioStream<Stream794> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 794) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream795: UnioStream<Stream795> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 795) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream796: UnioStream<Stream796> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 796) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream797: UnioStream<Stream797> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 797) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream798: UnioStream<Stream798> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 798) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream799: UnioStream<Stream799> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 799) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream800: UnioStream<Stream800> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 800) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream801: UnioStream<Stream801> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 801) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream802: UnioStream<Stream802> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 802) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream803: UnioStream<Stream803> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 803) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream804: UnioStream<Stream804> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 804) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream805: UnioStream<Stream805> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 805) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream806: UnioStream<Stream806> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 806) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream807: UnioStream<Stream807> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 807) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream808: UnioStream<Stream808> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 808) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream809: UnioStream<Stream809> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 809) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream810: UnioStream<Stream810> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 810) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream811: UnioStream<Stream811> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 811) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream812: UnioStream<Stream812> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 812) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream813: UnioStream<Stream813> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 813) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream814: UnioStream<Stream814> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 814) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream815: UnioStream<Stream815> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 815) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream816: UnioStream<Stream816> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 816) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream817: UnioStream<Stream817> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 817) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream818: UnioStream<Stream818> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 818) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream819: UnioStream<Stream819> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 819) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream820: UnioStream<Stream820> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 820) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream821: UnioStream<Stream821> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 821) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream822: UnioStream<Stream822> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 822) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream823: UnioStream<Stream823> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 823) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream824: UnioStream<Stream824> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 824) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream825: UnioStream<Stream825> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 825) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream826: UnioStream<Stream826> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 826) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream827: UnioStream<Stream827> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 827) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream828: UnioStream<Stream828> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 828) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream829: UnioStream<Stream829> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 829) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream830: UnioStream<Stream830> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 830) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream831: UnioStream<Stream831> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 831) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream832: UnioStream<Stream832> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 832) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream833: UnioStream<Stream833> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 833) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream834: UnioStream<Stream834> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 834) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream835: UnioStream<Stream835> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 835) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream836: UnioStream<Stream836> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 836) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream837: UnioStream<Stream837> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 837) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream838: UnioStream<Stream838> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 838) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream839: UnioStream<Stream839> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 839) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream840: UnioStream<Stream840> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 840) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream841: UnioStream<Stream841> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 841) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream842: UnioStream<Stream842> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 842) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream843: UnioStream<Stream843> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 843) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream844: UnioStream<Stream844> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 844) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream845: UnioStream<Stream845> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 845) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream846: UnioStream<Stream846> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 846) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream847: UnioStream<Stream847> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 847) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream848: UnioStream<Stream848> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 848) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream849: UnioStream<Stream849> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 849) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream850: UnioStream<Stream850> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 850) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream851: UnioStream<Stream851> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 851) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream852: UnioStream<Stream852> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 852) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream853: UnioStream<Stream853> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 853) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream854: UnioStream<Stream854> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 854) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream855: UnioStream<Stream855> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 855) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream856: UnioStream<Stream856> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 856) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream857: UnioStream<Stream857> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 857) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream858: UnioStream<Stream858> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 858) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream859: UnioStream<Stream859> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 859) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream860: UnioStream<Stream860> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 860) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream861: UnioStream<Stream861> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 861) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream862: UnioStream<Stream862> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 862) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream863: UnioStream<Stream863> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 863) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream864: UnioStream<Stream864> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 864) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream865: UnioStream<Stream865> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 865) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream866: UnioStream<Stream866> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 866) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream867: UnioStream<Stream867> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 867) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream868: UnioStream<Stream868> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 868) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream869: UnioStream<Stream869> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 869) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream870: UnioStream<Stream870> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 870) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream871: UnioStream<Stream871> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 871) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream872: UnioStream<Stream872> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 872) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream873: UnioStream<Stream873> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 873) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream874: UnioStream<Stream874> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 874) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream875: UnioStream<Stream875> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 875) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream876: UnioStream<Stream876> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 876) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream877: UnioStream<Stream877> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 877) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream878: UnioStream<Stream878> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 878) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream879: UnioStream<Stream879> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 879) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream880: UnioStream<Stream880> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 880) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream881: UnioStream<Stream881> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 881) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream882: UnioStream<Stream882> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 882) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream883: UnioStream<Stream883> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 883) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream884: UnioStream<Stream884> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 884) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream885: UnioStream<Stream885> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 885) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream886: UnioStream<Stream886> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 886) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream887: UnioStream<Stream887> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 887) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream888: UnioStream<Stream888> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 888) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream889: UnioStream<Stream889> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 889) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream890: UnioStream<Stream890> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 890) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream891: UnioStream<Stream891> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 891) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream892: UnioStream<Stream892> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 892) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream893: UnioStream<Stream893> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 893) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream894: UnioStream<Stream894> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 894) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream895: UnioStream<Stream895> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 895) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream896: UnioStream<Stream896> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 896) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream897: UnioStream<Stream897> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 897) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream898: UnioStream<Stream898> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 898) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream899: UnioStream<Stream899> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 899) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream900: UnioStream<Stream900> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 900) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream901: UnioStream<Stream901> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 901) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream902: UnioStream<Stream902> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 902) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream903: UnioStream<Stream903> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 903) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream904: UnioStream<Stream904> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 904) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream905: UnioStream<Stream905> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 905) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream906: UnioStream<Stream906> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 906) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream907: UnioStream<Stream907> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 907) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream908: UnioStream<Stream908> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 908) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream909: UnioStream<Stream909> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 909) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream910: UnioStream<Stream910> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 910) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream911: UnioStream<Stream911> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 911) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream912: UnioStream<Stream912> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 912) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream913: UnioStream<Stream913> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 913) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream914: UnioStream<Stream914> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 914) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream915: UnioStream<Stream915> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 915) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream916: UnioStream<Stream916> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 916) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream917: UnioStream<Stream917> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 917) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream918: UnioStream<Stream918> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 918) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream919: UnioStream<Stream919> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 919) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream920: UnioStream<Stream920> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 920) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream921: UnioStream<Stream921> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 921) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream922: UnioStream<Stream922> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 922) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream923: UnioStream<Stream923> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 923) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream924: UnioStream<Stream924> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 924) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream925: UnioStream<Stream925> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 925) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream926: UnioStream<Stream926> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 926) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream927: UnioStream<Stream927> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 927) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream928: UnioStream<Stream928> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 928) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream929: UnioStream<Stream929> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 929) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream930: UnioStream<Stream930> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 930) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream931: UnioStream<Stream931> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 931) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream932: UnioStream<Stream932> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 932) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream933: UnioStream<Stream933> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 933) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream934: UnioStream<Stream934> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 934) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream935: UnioStream<Stream935> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 935) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream936: UnioStream<Stream936> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 936) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream937: UnioStream<Stream937> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 937) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream938: UnioStream<Stream938> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 938) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream939: UnioStream<Stream939> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 939) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream940: UnioStream<Stream940> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 940) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream941: UnioStream<Stream941> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 941) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream942: UnioStream<Stream942> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 942) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream943: UnioStream<Stream943> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 943) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream944: UnioStream<Stream944> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 944) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream945: UnioStream<Stream945> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 945) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream946: UnioStream<Stream946> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 946) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream947: UnioStream<Stream947> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 947) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream948: UnioStream<Stream948> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 948) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream949: UnioStream<Stream949> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 949) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream950: UnioStream<Stream950> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 950) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream951: UnioStream<Stream951> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 951) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream952: UnioStream<Stream952> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 952) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream953: UnioStream<Stream953> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 953) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream954: UnioStream<Stream954> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 954) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream955: UnioStream<Stream955> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 955) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream956: UnioStream<Stream956> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 956) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream957: UnioStream<Stream957> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 957) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream958: UnioStream<Stream958> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 958) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream959: UnioStream<Stream959> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 959) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream960: UnioStream<Stream960> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 960) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream961: UnioStream<Stream961> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 961) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream962: UnioStream<Stream962> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 962) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream963: UnioStream<Stream963> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 963) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream964: UnioStream<Stream964> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 964) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream965: UnioStream<Stream965> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 965) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream966: UnioStream<Stream966> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 966) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream967: UnioStream<Stream967> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 967) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream968: UnioStream<Stream968> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 968) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream969: UnioStream<Stream969> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 969) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream970: UnioStream<Stream970> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 970) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream971: UnioStream<Stream971> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 971) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream972: UnioStream<Stream972> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 972) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream973: UnioStream<Stream973> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 973) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream974: UnioStream<Stream974> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 974) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream975: UnioStream<Stream975> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 975) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream976: UnioStream<Stream976> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 976) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream977: UnioStream<Stream977> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 977) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream978: UnioStream<Stream978> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 978) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream979: UnioStream<Stream979> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 979) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream980: UnioStream<Stream980> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 980) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream981: UnioStream<Stream981> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 981) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream982: UnioStream<Stream982> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 982) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream983: UnioStream<Stream983> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 983) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream984: UnioStream<Stream984> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 984) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream985: UnioStream<Stream985> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 985) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream986: UnioStream<Stream986> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 986) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream987: UnioStream<Stream987> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 987) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream988: UnioStream<Stream988> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 988) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream989: UnioStream<Stream989> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 989) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream990: UnioStream<Stream990> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 990) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream991: UnioStream<Stream991> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 991) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream992: UnioStream<Stream992> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 992) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream993: UnioStream<Stream993> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 993) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream994: UnioStream<Stream994> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 994) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream995: UnioStream<Stream995> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 995) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream996: UnioStream<Stream996> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 996) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream997: UnioStream<Stream997> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 997) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream998: UnioStream<Stream998> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 998) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream999: UnioStream<Stream999> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 999) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

    final class Stream1000: UnioStream<Stream1000> {
        struct Input: InputType {}
        struct Output: OutputType { let intValue = BehaviorRelay<Int>(value: 1000) }
        static func bind(from dependency: Dependency<Input, NoState, NoExtra>, disposeBag: DisposeBag) -> Output { Output() }
    }

}

