import SIMDExtras
import Testing

struct Endianess {
    typealias Vector = SIMD2<UInt16>
    
    static let vectors = [Vector].random(count: 128)
    
    @Test("SIMD/bigEndian", arguments: vectors)
    func bigEndian(vector: Vector) {
        #expect(vector.bigEndian == [vector.x.bigEndian, vector.y.bigEndian])
    }
    
    @Test("SIMD/byteSwapped", arguments: vectors)
    func byteSwapped(vector: Vector) {
        #expect(vector.byteSwapped == [vector.x.byteSwapped, vector.y.byteSwapped])
    }
    
    @Test("SIMD/littleEndian", arguments: vectors)
    func littleEndian(vector: Vector) {
        #expect(vector.littleEndian == [vector.x.littleEndian, vector.y.littleEndian])
    }
    
    @Test("SIMD(bigEndian:)", arguments: vectors)
    func initBigEndian(vector: Vector) {
        #expect(Vector(bigEndian: vector) == [
            Vector.Scalar(bigEndian: vector.x),
            Vector.Scalar(bigEndian: vector.y)
        ])
    }
    
    @Test("SIMD(littleEndian:)", arguments: vectors)
    func initLittleEndian(vector: Vector) {
        #expect(Vector(littleEndian: vector) == [
            Vector.Scalar(littleEndian: vector.x),
            Vector.Scalar(littleEndian: vector.y)
        ])
    }
}
