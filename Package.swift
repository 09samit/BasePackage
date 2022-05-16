// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BasePackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BasePackage",
            targets: ["BasePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/09samit/plcrashreporter-master.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "BasePackage",
            dependencies: [
                .product(name: "CrashReporter", package: "plcrashreporter-master")
            ]),
        .testTarget(
            name: "BasePackageTests",
            dependencies: ["BasePackage"]),
    ]
)
