public protocol RotateableLanesProtocol where Self: SIMD {
    func rotatingLanes(left count: Int) -> Self
    
    func rotatingLanes(right count: Int) -> Self
}

extension RotateableLanesProtocol {
    @inline(__always)
    public mutating func rotateLanes(left count: Int) {
        self = self.rotatingLanes(left: count)
    }
    
    @inline(__always)
    public mutating func rotateLanes(right count: Int) {
        self = self.rotatingLanes(right: count)
    }
}

extension SIMD2: RotateableLanesProtocol {
    private typealias Indices = SIMD2<Int>
    
    @inline(__always)
    public func rotatingLanes(left count: Int) -> Self {
        switch count.modulo(Self.scalarCount) {
        case 0:
            self[Indices(0, 1)]
        case 1:
            self[Indices(1, 0)]
        default:
            unreachable()
        }
    }
    
    @inline(__always)
    public func rotatingLanes(right count: Int) -> Self {
        self.rotatingLanes(left: 0 &- count)
    }
}

extension SIMD3: RotateableLanesProtocol {
    private typealias Indices = SIMD3<Int>
    
    @inline(__always)
    public func rotatingLanes(left count: Int) -> Self {
        switch count.modulo(Self.scalarCount) {
        case 0:
            self[Indices(0, 1, 2)]
        case 1:
            self[Indices(1, 2, 0)]
        case 2:
            self[Indices(2, 0, 1)]
        default:
            unreachable()
        }
    }
    
    @inline(__always)
    public func rotatingLanes(right count: Int) -> Self {
        self.rotatingLanes(left: 0 &- count)
    }
}

extension SIMD4: RotateableLanesProtocol {
    private typealias Indices = SIMD4<Int>
    
    @inline(__always)
    public func rotatingLanes(left count: Int) -> Self {
        switch count.modulo(Self.scalarCount) {
        case 0:
            self[Indices(0, 1, 2, 3)]
        case 1:
            self[Indices(1, 2, 3, 0)]
        case 2:
            self[Indices(2, 3, 0, 1)]
        case 3:
            self[Indices(3, 0, 1, 2)]
        default:
            unreachable()
        }
    }
    
    @inline(__always)
    public func rotatingLanes(right count: Int) -> Self {
        self.rotatingLanes(left: 0 &- count)
    }
}

extension Int {
    @inline(__always)
    fileprivate func modulo(_ divisor: Self) -> Self {
        let remainder = self % divisor
        return remainder >= 0 ? remainder : remainder &+ divisor
    }
}

@inline(__always)
private func unreachable(file: StaticString = #file, line: UInt = #line) -> Never {
    assertionFailure("Encountered unreachable path", file: file, line: line)
    return unsafeBitCast((), to: Never.self)
}
