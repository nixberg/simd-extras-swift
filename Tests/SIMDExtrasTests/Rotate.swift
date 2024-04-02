import Numerics
import SIMDExtras
import Testing

struct Rotate {
    typealias Vector = SIMD2<UInt8>
    
    static let vectors = [Vector].random(count: 4)
    
    @Test("SIMD/rotate(left:)", arguments: vectors.prefix(1), 0...8)
    func rotateLeft(vector: Vector, count: Vector.Scalar) {
        var rotated = vector
        rotated.rotate(left: count)
        #expect(rotated == vector.rotated(left: count))
    }
    
    @Test("SIMD/rotated(left:)", arguments: vectors, 0...255)
    func rotatedLeft(vector: Vector, count: Vector.Scalar) {
        #expect(vector.rotated(left: count) == [
            vector.x.rotated(left: count),
            vector.y.rotated(left: count)
        ])
    }
    
    @Test("SIMD/rotate(right:)", arguments: vectors.prefix(1), 0...8)
    func rotateRight(vector: Vector, count: Vector.Scalar) {
        var rotated = vector
        rotated.rotate(right: count)
        #expect(rotated == vector.rotated(right: count))
    }
    
    @Test("SIMD/rotated(right:)", arguments: vectors, 0...255)
    func rotatedRight(vector: Vector, count: Vector.Scalar) {
        #expect(vector.rotated(right: count) == [
            vector.x.rotated(right: count),
            vector.y.rotated(right: count)
        ])
    }
}
