// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScreenshotPreventing",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "ScreenshotPreventing", targets: ["ScreenshotPreventing"]),
        .library(name: "ScreenshotPreventingSwiftUI", targets: ["ScreenshotPreventingSwiftUI"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ScreenshotPreventing",
            dependencies: [],
            path: "Sources/Core"
        ),
        .target(
            name: "ScreenshotPreventingSwiftUI",
            dependencies: ["ScreenshotPreventing"],
            path: "Sources/SwiftUI"
        ),
        .testTarget(
            name: "ScreenshotPreventingTests",
            dependencies: ["ScreenshotPreventing"]
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
