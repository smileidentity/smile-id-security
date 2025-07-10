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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/1.0.3/SmileIDSecurity.xcframework.zip",
            checksum: "b07efcd0dbf38b71ad0bc962c6cd90f3702771d5c42aba0a40ba7c003d8b1b8a"
        )
    ]
)
