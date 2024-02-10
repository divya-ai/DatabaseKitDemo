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
            url: "https://github.com/divya-ai/DatabaseKitDemo/blob/main/DatabaseKit.xcframework.zip", // Update with the URL or relative path to your .xcframework
            checksum: "b35bf7f08d94b1b9b5234f07325c4c1ad81fdd050475e86f5d477ca61378b2d2" // Update with the checksum of your .xcframework
        )
    ]
)
