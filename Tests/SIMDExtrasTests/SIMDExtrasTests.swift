import SIMDExtras
import XCTest

final class SIMDExtrasTests: XCTestCase {
    private let x: UInt16 = .random(in: 0...(.max))
    private let y: UInt16 = .random(in: 0...(.max))
    
    func testBigEndianVar() {
        let vector = SIMD2(x, y).bigEndian
        XCTAssertEqual(vector.x, x.bigEndian)
        XCTAssertEqual(vector.y, y.bigEndian)
    }
    
    func testLittleEndianVar() {
        let vector = SIMD2(x, y).littleEndian
        XCTAssertEqual(vector.x, x.littleEndian)
        XCTAssertEqual(vector.y, y.littleEndian)
    }
    
    func testBigEndianInit() {
        let vector = SIMD2(bigEndian: [x, y])
        XCTAssertEqual(vector.x, UInt16(bigEndian: x))
        XCTAssertEqual(vector.y, UInt16(bigEndian: y))
    }
    
    func testLittleEndianInit() {
        let vector = SIMD2(littleEndian: [x, y])
        XCTAssertEqual(vector.x, UInt16(littleEndian: x))
        XCTAssertEqual(vector.y, UInt16(littleEndian: y))
    }
    
    func testRotatedLeft() {
        let vector = SIMD2(x, y).rotated(left: 7)
        XCTAssertEqual(vector.x, x.rotated(left: 7))
        XCTAssertEqual(vector.y, y.rotated(left: 7))
    }
    
    func testRotatedRight() {
        let vector = SIMD2(x, y).rotated(right: 7)
        XCTAssertEqual(vector.x, x.rotated(right: 7))
        XCTAssertEqual(vector.y, y.rotated(right: 7))
    }
}

extension FixedWidthInteger where Self: UnsignedInteger {
    fileprivate func rotated(left count: Int) -> Self {
        self &<< count | self &>> (Self.bitWidth - count)
    }
    
    fileprivate func rotated(right count: Int) -> Self {
        self &<< (Self.bitWidth - count) | self &>> count
    }
}
