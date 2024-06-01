extension SIMD4 {
    public init(evenHalf: SIMD2<Scalar>, oddHalf: SIMD2<Scalar>) {
        self = Self(lowHalf: evenHalf, highHalf: oddHalf)[SIMD4<Int>(
            00, 02, 01, 03
        )]
    }
}

extension SIMD8 {
    public init(evenHalf: SIMD4<Scalar>, oddHalf: SIMD4<Scalar>) {
        self = Self(lowHalf: evenHalf, highHalf: oddHalf)[SIMD8<Int>(
            00, 04, 01, 05, 02, 06, 03, 07
        )]
    }
}

extension SIMD16 {
    public init(evenHalf: SIMD8<Scalar>, oddHalf: SIMD8<Scalar>) {
        self = Self(lowHalf: evenHalf, highHalf: oddHalf)[SIMD16<Int>(
            00, 08, 01, 09, 02, 10, 03, 11,
            04, 12, 05, 13, 06, 14, 07, 15
        )]
    }
}

extension SIMD32 {
    public init(evenHalf: SIMD16<Scalar>, oddHalf: SIMD16<Scalar>) {
        self = Self(lowHalf: evenHalf, highHalf: oddHalf)[SIMD32<Int>(
            00, 16, 01, 17, 02, 18, 03, 19,
            04, 20, 05, 21, 06, 22, 07, 23,
            08, 24, 09, 25, 10, 26, 11, 27,
            12, 28, 13, 29, 14, 30, 15, 31
        )]
    }
}

extension SIMD64 {
    public init(evenHalf: SIMD32<Scalar>, oddHalf: SIMD32<Scalar>) {
        self = Self(lowHalf: evenHalf, highHalf: oddHalf)[SIMD64<Int>(
            00, 32, 01, 33, 02, 34, 03, 35,
            04, 36, 05, 37, 06, 38, 07, 39,
            08, 40, 09, 41, 10, 42, 11, 43,
            12, 44, 13, 45, 14, 46, 15, 47,
            16, 48, 17, 49, 18, 50, 19, 51,
            20, 52, 21, 53, 22, 54, 23, 55,
            24, 56, 25, 57, 26, 58, 27, 59,
            28, 60, 29, 61, 30, 62, 31, 63
        )]
    }
}

//extension SIMD where Scalar: FixedWidthInteger {
//    public func invertedPermutation() -> Self {
//        var result = Self()
//        for index in indices {
//            result[index] = Scalar(self.firstIndex(of: Scalar(index))!)
//        }
//        return result
//    }
//    
//    private func firstIndex(of element: Scalar) -> Int? {
//        for index in indices {
//            if self[index] == element {
//                return index
//            }
//        }
//        return nil
//    }
//}
