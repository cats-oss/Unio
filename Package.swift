// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Unio",
    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "Unio",
                 targets: ["Unio"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0")
    ],
    targets: [
        .target(name: "Unio",
                dependencies: ["RxSwift", "RxRelay"],
                path: "Unio"),
        .testTarget(name: "UnioTests",
                    dependencies: ["Unio", "RxCocoa"],
                    path: "UnioTests"),
    ],
    swiftLanguageVersions: [.v5]
)
