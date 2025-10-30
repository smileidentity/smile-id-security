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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/11.1.2/SmileIDSecurity.xcframework.zip",
            checksum: "657890c71f9fa0fb63fd8f76419664fa672ec384e41d3e49957f3d4120c263c6"
        )
    ]
)
