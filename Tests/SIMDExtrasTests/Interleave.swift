import SIMDExtras
import Testing

struct Interleave {
    @Test("SIMD4(evenHalf:oddHalf)")
    func simd4() {
        let evenHalf = SIMD2<Int>.random(in: ...)
        let oddHalf = SIMD2<Int>.random(in: ...)
        let interleaved = SIMD4(evenHalf: evenHalf, oddHalf: oddHalf)
        #expect(interleaved.evenHalf == evenHalf)
        #expect(interleaved.oddHalf == oddHalf)
    }
    
    @Test("SIMD8(evenHalf:oddHalf)")
    func simd8() {
        let evenHalf = SIMD4<Int>.random(in: ...)
        let oddHalf = SIMD4<Int>.random(in: ...)
        let interleaved = SIMD8(evenHalf: evenHalf, oddHalf: oddHalf)
        #expect(interleaved.evenHalf == evenHalf)
        #expect(interleaved.oddHalf == oddHalf)
    }
    
    @Test("SIMD16(evenHalf:oddHalf)")
    func simd16() {
        let evenHalf = SIMD8<Int>.random(in: ...)
        let oddHalf = SIMD8<Int>.random(in: ...)
        let interleaved = SIMD16(evenHalf: evenHalf, oddHalf: oddHalf)
        #expect(interleaved.evenHalf == evenHalf)
        #expect(interleaved.oddHalf == oddHalf)
    }
    
    @Test("SIMD32(evenHalf:oddHalf)")
    func simd32() {
        let evenHalf = SIMD16<Int>.random(in: ...)
        let oddHalf = SIMD16<Int>.random(in: ...)
        let interleaved = SIMD32(evenHalf: evenHalf, oddHalf: oddHalf)
        #expect(interleaved.evenHalf == evenHalf)
        #expect(interleaved.oddHalf == oddHalf)
    }
    
    @Test("SIMD64(evenHalf:oddHalf)")
    func simd64() {
        let evenHalf = SIMD32<Int>.random(in: ...)
        let oddHalf = SIMD32<Int>.random(in: ...)
        let interleaved = SIMD64(evenHalf: evenHalf, oddHalf: oddHalf)
        #expect(interleaved.evenHalf == evenHalf)
        #expect(interleaved.oddHalf == oddHalf)
    }
}

extension SIMD where Scalar: FixedWidthInteger {
    fileprivate static func random(in _: UnboundedRange) -> Self {
        Self.random(in: .min ... .max)
    }
}
