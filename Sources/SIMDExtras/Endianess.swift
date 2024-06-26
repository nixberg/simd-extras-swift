extension SIMD where Scalar: FixedWidthInteger {
    @inline(__always)
    public var bigEndian: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].bigEndian
        }
        return result
    }
    
    @inline(__always)
    public var byteSwapped: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].byteSwapped
        }
        return result
    }
    
    @inline(__always)
    public var littleEndian: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].littleEndian
        }
        return result
    }
    
    @inline(__always)
    public init(bigEndian: Self) {
        self.init()
        for index in indices {
            self[index] = Scalar(bigEndian: bigEndian[index])
        }
    }
    
    @inline(__always)
    public init(littleEndian: Self) {
        self.init()
        for index in indices {
            self[index] = Scalar(littleEndian: littleEndian[index])
        }
    }
}
