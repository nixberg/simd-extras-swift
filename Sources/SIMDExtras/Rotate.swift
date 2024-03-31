extension SIMD where Scalar: FixedWidthInteger & UnsignedInteger {
    public func rotated(left count: Scalar) -> Self {
        self &<< count | self &>> (Scalar(Scalar.bitWidth) &- count)
    }
    
    public func rotated(right count: Scalar) -> Self {
        self &<< (Scalar(Scalar.bitWidth) &- count) | self &>> count
    }
}
