# Unio 0.5.0 Migration Guide

Unio 0.5.0 introduces some breaking changes.

## Classes

- [RENAME] `Relay<Input>` -> `InputWrapper<Input>`
- [RENAME] `Relay<Output>` -> `OutputWrapper<Output>`
- [RENAME] `ReadOnly` -> `PrimitiveProperty`

## Methods

- [DELETE] `Dependency.readOnlyReference(from:for:)`
  - Use `OutputWrapper.property(for:)` instead.
