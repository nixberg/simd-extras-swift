extension Array where Element: SIMD, Element.Scalar: FixedWidthInteger {
    static func random(in _: UnboundedRange, count: Int) -> Self {
        (0..<count).map { _ in
            Element.random(in: .min ... .max)
        }
    }
}
