extension SIMD where Scalar: FixedWidthInteger {
    public func wrappedProduct() -> Scalar {
        var result: Scalar = 0
        for index in indices {
            result &*= self[index]
        }
        return result
    }
    
    public func bitwiseANDReduction() -> Scalar {
        var result: Scalar = 0
        for index in indices {
            result &= self[index]
        }
        return result
    }
    
    public func bitwiseORReduction() -> Scalar {
        var result: Scalar = 0
        for index in indices {
            result |= self[index]
        }
        return result
    }
    
    public func bitwiseXORReduction() -> Scalar {
        var result: Scalar = 0
        for index in indices {
            result ^= self[index]
        }
        return result
    }
}
