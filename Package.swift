// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ScreenGuard",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ScreenGuard",
            targets: ["ScreenGuard"]),
    ],
    targets: [
        .target(
            name: "ScreenGuard",
            path: "Sources"
        ),
    ]
)
