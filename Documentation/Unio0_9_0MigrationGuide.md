# Unio 0.9.0 Migration Guide

Unio 0.9.0 introduces some breaking changes.

Those changes are related [SR-12081](https://bugs.swift.org/browse/SR-12081).

## Classes

- [ADD] `AnyLogicBasedStream<Input: InputType, Output: OutputType>`

## Typealias

- [REPLACE] `typealias UnioStream<Logic: LogicType> = PrimitiveStream<Logic> & LogicType` -> `typealias UnioStream<Logic: LogicType> = AnyLogicBasedStream<Logic.Input, Logic.Output> & LogicType`

## Note

- Previous `UnioStream<Logic: LogicType>` (less than 0.8.0) had `init(input: Input, state: State, extra: Extra)` as the designated initializer. Current `UnioStream<Logic: LogicType>` (greater than 0.9.0) also has `init(input: Input, state: State, extra: Extra)` but it is the convenience initializer. So, you should fix initializers like that.

Before
```swift
init(extra: Extra) {
    super.init(input: Input(), state: State(), extra: extra)
}
```

After
```swift
convenience init(extra: Extra) {
    self.init(input: Input(), state: State(), extra: extra)
}
```

If you defined some properties in UnioStream subclasses, you must change initializers to like that.

Before
```swift
class NumberStream: UnioStream<NumberStream> {
    let number: Int

    init(number: Int, extra: Extra) {
        self.number = number
        super.init(input: Input(), state: State(), extra: extra)
    }
}
```

After
```swift
class NumberStream: UnioStream<NumberStream> {
    let number: Int

    init(number: Int, extra: Extra) {
        self.number = number
        super.init(input: Input(), state: State(), extra: extra, logic: NumberStream.self)
    }

    @available(*, unavailable)
    init<Logic: LogicType>(input: Logic.Input,
                           state: Logic.State,
                           extra: Logic.Extra,
                           logic _: Logic.Type) where Input == Logic.Input, Output == Logic.Output {
        fatalError("could not be called anymore")
    }
}
```

- If you want to use existing UnioStream initializer (less than 0.8.0), please define `typealise UnioSteram<Logic: LogicType> = SR12081.UnioSteram<Logic>` in your Application Target.