// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "simd-extras-swift",
    products: [
        .library(
            name: "SIMDExtras",
            targets: ["SIMDExtras"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-numerics",
            branch: "main"),
        .package(
            url: "https://github.com/apple/swift-testing",
            .upToNextMinor(from: "0.9.0")),
    ],
    targets: [
        .target(
            name: "SIMDExtras"),
        .testTarget(
            name: "SIMDExtrasTests",
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics"),
                "SIMDExtras",
                .product(name: "Testing", package: "swift-testing"),
            ]),
    ]
)
