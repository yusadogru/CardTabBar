// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardTabBar",
    platforms: [
          .iOS(.v13)
      ],
    products: [
        .library(
            name: "CardTabBar",
            targets: ["CardTabBar"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CardTabBar",
            dependencies: [],
            path: "Sources",
            resources: [
                    .process("Assets.xcassets"),
                ]
            )
    ]
)
