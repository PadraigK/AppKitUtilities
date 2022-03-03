// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppKitUtilities",
    products: [
        .library(
            name: "AppKitUtilities",
            targets: ["AppKitUtilities"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AppKitUtilities",
            dependencies: []
        ),
        .testTarget(
            name: "AppKitUtilitiesTests",
            dependencies: ["AppKitUtilities"]
        ),
    ]
)
