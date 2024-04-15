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
            .upToNextMinor(from: "0.7.0")),
    ],
    targets: [
        .target(
            name: "SIMDExtras",
            swiftSettings: .allUpcomingFeatures),
        .testTarget(
            name: "SIMDExtrasTests",
            dependencies: [
                "SIMDExtras",
                .product(name: "Numerics", package: "swift-numerics"),
                .product(name: "Testing", package: "swift-testing"),
            ],
            swiftSettings: .allUpcomingFeatures),
    ]
)

extension [SwiftSetting] {
    // As of 2024-03-13: https://www.swift.org/swift-evolution/#?upcoming=true
    static var allUpcomingFeatures: Self {
        [
            .enableExperimentalFeature("StrictConcurrency"),
            .enableUpcomingFeature("StrictConcurrency"),
            
            .enableUpcomingFeature("FullTypedThrows"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("InferSendableFromCaptures"),
            .enableUpcomingFeature("IsolatedDefaultValues"),
            .enableUpcomingFeature("DisableOutwardActorInference"),
            .enableUpcomingFeature("ImportObjcForwardDeclarations"),
            .enableUpcomingFeature("DeprecateApplicationMain"),
            .enableUpcomingFeature("BareSlashRegexLiterals"),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("ForwardTrailingClosures"),
            .enableUpcomingFeature("ConciseMagicFile"),
        ]
    }
}
