// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DatabaseKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DatabaseKit",
            targets: ["DatabaseKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.46.0")

    ],
    
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        

        .binaryTarget(
            name: "DatabaseKit",
            url: "https://github.com/divya-ai/DatabaseKitDemo/tree/main/DatabaseKit.xcframework", // Update with the URL or relative path to your .xcframework
            checksum: "37dfab61d1bd1bd8edbd5585c7f73c557f6205fa182c15f3edc73ed5a53301c6" // Update with the checksum of your .xcframework
        )
    ]
)
