// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TonKit",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "TonKit",
            targets: ["TonKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/Kitura/BlueSocket.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.21.0"),
        .package(url: "https://github.com/tonkeeper/ton-api-swift.git", .upToNextMajor(from: "0.4.0")),
        .package(url: "https://github.com/tonkeeper/ton-swift.git", .upToNextMajor(from: "1.0.28")),
        .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsToolKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsExtensions.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "TonKit",
            dependencies: [
                "BigInt",
                .product(name: "Socket", package: "BlueSocket"),
                .product(name: "GRDB", package: "GRDB.swift"),
                "ObjectMapper",
                .product(name: "TonAPI", package: "ton-api-swift"),
                .product(name: "StreamURLSessionTransport", package: "ton-api-swift"),
                .product(name: "TonStreamingAPI", package: "ton-api-swift"),
                .product(name: "EventSource", package: "ton-api-swift"),
                .product(name: "TonSwift", package: "ton-swift"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),
                .product(name: "HsToolKit", package: "HsToolKit"),
                .product(name: "HsExtensions", package: "HsExtensions"),
            ]
        ),
    ]
)
