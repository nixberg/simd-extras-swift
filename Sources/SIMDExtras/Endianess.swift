extension SIMD where Scalar: FixedWidthInteger {
    public var bigEndian: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].bigEndian
        }
        return result
    }
    
    public var byteSwapped: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].byteSwapped
        }
        return result
    }
    
    public var littleEndian: Self {
        var result = Self()
        for index in indices {
            result[index] = self[index].littleEndian
        }
        return result
    }
    
    public init(bigEndian: Self) {
        self.init()
        for index in indices {
            self[index] = Scalar(bigEndian: bigEndian[index])
        }
    }
    
    public init(littleEndian: Self) {
        self.init()
        for index in indices {
            self[index] = Scalar(littleEndian: littleEndian[index])
        }
    }
}
