// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SmileIDSecurity",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SmileIDSecurity",
            targets: ["SmileIDSecurity"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmileIDSecurity",
            url: "https://github.com/smileidentity/smile-id-security/Releases/1.0.0/SmileIDSecurity.xcframework.zip",
            checksum: "2aac55e8a202e64728e4ec9bb7af41075b442d15b9ff602b6c40b97bdc07542b"
        )
    ]
)
