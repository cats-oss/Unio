//
//  AnyUnioStream.swift
//  UnioTests
//
//  Created by Akio Yasui on 2019/11/19.
//  Copyright © 2019 tv.abema. All rights reserved.
//

/// A type-erased wrapper for any UnioStreamType.
public final class AnyUnioStream<Input: InputType, Output: OutputType>: UnioStreamType {
    public let input: InputWrapper<Input>
    public let output: OutputWrapper<Output>

    /// Strong reference to the actual stream for preventing it being released.
    private let _stream: AnyObject

    public init<Stream: UnioStreamType>(_ stream: Stream) where Stream.Input == Input, Stream.Output == Output {
        self._stream = stream
        self.input = stream.input
        self.output = stream.output
    }
}
