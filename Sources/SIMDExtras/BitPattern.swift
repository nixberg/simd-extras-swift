@_marker
public protocol Storage64 {}

extension SIMD2<UInt32>: Storage64 {}
extension SIMD4<UInt16>: Storage64 {}
extension SIMD8<UInt8>:  Storage64 {}

extension Storage64 {
    public init<Other: Storage64>(bitPattern value: Other) {
        precondition(MemoryLayout<Self>.size == MemoryLayout<Other>.size)
        precondition(MemoryLayout<Self>.alignment == MemoryLayout<Other>.alignment)
        self = unsafeBitCast(value, to: Self.self)
    }
}

@_marker
public protocol Storage128 {}

extension SIMD2<UInt64>: Storage128 {}
extension SIMD4<UInt32>: Storage128 {}
extension SIMD8<UInt16>: Storage128 {}
extension SIMD16<UInt8>: Storage128 {}

extension Storage128 {
    public init<Other: Storage128>(bitPattern value: Other) {
        precondition(MemoryLayout<Self>.size == MemoryLayout<Other>.size)
        precondition(MemoryLayout<Self>.alignment == MemoryLayout<Other>.alignment)
        self = unsafeBitCast(value, to: Self.self)
    }
}

@_marker
public protocol Storage256 {}

extension SIMD4<UInt64>:  Storage256 {}
extension SIMD8<UInt32>:  Storage256 {}
extension SIMD16<UInt16>: Storage256 {}
extension SIMD32<UInt8>:  Storage256 {}

extension Storage256 {
    public init<Other: Storage256>(bitPattern value: Other) {
        precondition(MemoryLayout<Self>.size == MemoryLayout<Other>.size)
        precondition(MemoryLayout<Self>.alignment == MemoryLayout<Other>.alignment)
        self = unsafeBitCast(value, to: Self.self)
    }
}

@_marker
public protocol Storage512 {}

extension SIMD8<UInt64>:  Storage512 {}
extension SIMD16<UInt32>: Storage512 {}
extension SIMD32<UInt16>: Storage512 {}
extension SIMD64<UInt8>:  Storage512 {}

extension Storage512 {
    public init<Other: Storage512>(bitPattern value: Other) {
        precondition(MemoryLayout<Self>.size == MemoryLayout<Other>.size)
        precondition(MemoryLayout<Self>.alignment == MemoryLayout<Other>.alignment)
        self = unsafeBitCast(value, to: Self.self)
    }
}
