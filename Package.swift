// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Butch",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "Butch",
            targets: ["Butch"]
        ),
    ],
    targets: [
        .target(
            name: "Butch"
        ),
        .testTarget(
            name: "ButchTests",
            dependencies: ["Butch"]
        ),
    ]
)
