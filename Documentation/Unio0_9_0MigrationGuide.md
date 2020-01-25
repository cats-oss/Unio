# Unio 0.9.0 Migration Guide

Unio 0.9.0 introduces some breaking changes.

Those changes are related [SR-12081](https://bugs.swift.org/browse/SR-12081).

## Classes

- [ADD] `AnyLogicBasedStream<Input: InputType, Output: OutputType>`

## Typealias

- [REPLACE] `typealias UnioStream<Logic: LogicType> = PrimitiveStream<Logic> & LogicType` -> `typealias UnioStream<Logic: LogicType> = AnyLogicBasedStream<Logic.Input, Logic.Output> & LogicType`

## Note

If you want to use existing UnioStream initializer (less than 0.8.0), please define `typealise UnioSteram<Logic: LogicType> = SR12081.UnioSteram<Logic>` in your Application Target.