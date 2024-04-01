extension SIMD where Scalar: FixedWidthInteger & UnsignedInteger {
    public mutating func rotate(left count: Scalar) {
        self = self.rotated(left: count)
    }
    
    public func rotated(left count: Scalar) -> Self {
        self &<< count | self &>> (Scalar(Scalar.bitWidth) &- count)
    }
    
    public mutating func rotate(right count: Scalar) {
        self = self.rotated(right: count)
    }
    
    public func rotated(right count: Scalar) -> Self {
        self &<< (Scalar(Scalar.bitWidth) &- count) | self &>> count
    }
}
