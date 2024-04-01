extension SIMD where Scalar: FixedWidthInteger & UnsignedInteger {
    @inline(__always)
    public mutating func rotate(left count: Scalar) {
        self = self.rotated(left: count)
    }
    
    @inline(__always)
    public func rotated(left count: Scalar) -> Self {
        self &<< count | self &>> (Scalar(Scalar.bitWidth) &- count)
    }
    
    @inline(__always)
    public mutating func rotate(right count: Scalar) {
        self = self.rotated(right: count)
    }
    
    @inline(__always)
    public func rotated(right count: Scalar) -> Self {
        self &<< (Scalar(Scalar.bitWidth) &- count) | self &>> count
    }
}
