import SIMDExtras
import Testing

struct RotateLanes {
    @Test("SIMD2/rotateLanes(left:)")
    func simd2RotateLanesLeft() {
        var vector = SIMD2(0, 1)
        vector.rotateLanes(left: 0)
        #expect(vector == [0, 1])
        vector.rotateLanes(left: 1)
        #expect(vector == [1, 0])
    }
    
    @Test("SIMD2/rotatingLanes(left:)")
    func simd2RotatingLanesLeft() {
        let vector = SIMD2(0, 1)
        #expect(vector.rotatingLanes(left: -2) == [0, 1])
        #expect(vector.rotatingLanes(left: -1) == [1, 0])
        
        #expect(vector.rotatingLanes(left:  0) == [0, 1])
        #expect(vector.rotatingLanes(left:  1) == [1, 0])
        
        #expect(vector.rotatingLanes(left:  2) == [0, 1])
        #expect(vector.rotatingLanes(left:  3) == [1, 0])
    }
    
    @Test("SIMD2/rotateLanes(right:)")
    func simd2RotateLanesRight() {
        var vector = SIMD2(0, 1)
        vector.rotateLanes(right: 0)
        #expect(vector == [0, 1])
        vector.rotateLanes(right: 1)
        #expect(vector == [1, 0])
    }
    
    @Test("SIMD2/rotatingLanes(right:)")
    func simd2RotatingLanesRight() {
        let vector = SIMD2(0, 1)
        #expect(vector.rotatingLanes(right: -2) == [0, 1])
        #expect(vector.rotatingLanes(right: -1) == [1, 0])
        
        #expect(vector.rotatingLanes(right:  0) == [0, 1])
        #expect(vector.rotatingLanes(right:  1) == [1, 0])
        
        #expect(vector.rotatingLanes(right:  2) == [0, 1])
        #expect(vector.rotatingLanes(right:  3) == [1, 0])
    }
    
    @Test("SIMD3/rotatingLanes(left:)")
    func simd3RotatingLanesLeft() {
        let vector = SIMD3(0, 1, 2)
        #expect(vector.rotatingLanes(left: -3) == [0, 1, 2])
        #expect(vector.rotatingLanes(left: -2) == [1, 2, 0])
        #expect(vector.rotatingLanes(left: -1) == [2, 0, 1])
        
        #expect(vector.rotatingLanes(left:  0) == [0, 1, 2])
        #expect(vector.rotatingLanes(left:  1) == [1, 2, 0])
        #expect(vector.rotatingLanes(left:  2) == [2, 0, 1])
        
        #expect(vector.rotatingLanes(left:  3) == [0, 1, 2])
        #expect(vector.rotatingLanes(left:  4) == [1, 2, 0])
        #expect(vector.rotatingLanes(left:  5) == [2, 0, 1])
    }
    
    @Test("SIMD3/rotatingLanes(right:)")
    func simd3RotatingLanesRight() {
        let vector = SIMD3(0, 1, 2)
        #expect(vector.rotatingLanes(right: -3) == [0, 1, 2])
        #expect(vector.rotatingLanes(right: -2) == [2, 0, 1])
        #expect(vector.rotatingLanes(right: -1) == [1, 2, 0])
        
        #expect(vector.rotatingLanes(right:  0) == [0, 1, 2])
        #expect(vector.rotatingLanes(right:  1) == [2, 0, 1])
        #expect(vector.rotatingLanes(right:  2) == [1, 2, 0])
        
        #expect(vector.rotatingLanes(right:  3) == [0, 1, 2])
        #expect(vector.rotatingLanes(right:  4) == [2, 0, 1])
        #expect(vector.rotatingLanes(right:  5) == [1, 2, 0])
    }
    
    @Test("SIMD4/rotatingLanes(left:)")
    func simd4RotatingLanesLeft() {
        let vector = SIMD4(0, 1, 2, 3)
        #expect(vector.rotatingLanes(left: -4) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(left: -3) == [1, 2, 3, 0])
        #expect(vector.rotatingLanes(left: -2) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(left: -1) == [3, 0, 1, 2])
        
        #expect(vector.rotatingLanes(left:  0) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(left:  1) == [1, 2, 3, 0])
        #expect(vector.rotatingLanes(left:  2) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(left:  3) == [3, 0, 1, 2])
        
        #expect(vector.rotatingLanes(left:  4) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(left:  5) == [1, 2, 3, 0])
        #expect(vector.rotatingLanes(left:  6) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(left:  7) == [3, 0, 1, 2])
    }
    
    @Test("SIMD4/rotatingLanes(right:)")
    func simd4RotatingLanesRight() {
        let vector = SIMD4(0, 1, 2, 3)
        #expect(vector.rotatingLanes(right: -4) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(right: -3) == [3, 0, 1, 2])
        #expect(vector.rotatingLanes(right: -2) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(right: -1) == [1, 2, 3, 0])
        
        #expect(vector.rotatingLanes(right:  0) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(right:  1) == [3, 0, 1, 2])
        #expect(vector.rotatingLanes(right:  2) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(right:  3) == [1, 2, 3, 0])
        
        #expect(vector.rotatingLanes(right:  4) == [0, 1, 2, 3])
        #expect(vector.rotatingLanes(right:  5) == [3, 0, 1, 2])
        #expect(vector.rotatingLanes(right:  6) == [2, 3, 0, 1])
        #expect(vector.rotatingLanes(right:  7) == [1, 2, 3, 0])
    }
}
