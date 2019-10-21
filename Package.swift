// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Unio",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "Unio",
                 targets: ["Unio"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
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
