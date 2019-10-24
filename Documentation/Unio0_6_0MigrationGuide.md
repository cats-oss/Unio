# Unio 0.6.0 Migration Guide

Unio 0.6.0 introduces some breaking changes.

## Classes

- [RENAME] `UnioStream<Logic>` -> `PrimitiveStream<Logic>`

## Methods

- [REPLACE] `LogicType func bind(from:)` -> `LogicType static func bind(from:disposeBag:)`

## Typealias

- [ADD] `typealias UnioStream<Logic: LogicType> = PrimitiveStream<Logic> & LogicType`
