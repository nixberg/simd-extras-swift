// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "simd-extras-swift",
    products: [
        .library(
            name: "SIMDExtras",
            targets: ["SIMDExtras"]),
    ],
    targets: [
        .target(
            name: "SIMDExtras"),
        .testTarget(
            name: "SIMDExtrasTests",
            dependencies: ["SIMDExtras"]),
    ]
)
