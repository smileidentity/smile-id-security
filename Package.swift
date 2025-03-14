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
            url: "https://github.com/smileidentity/smile-id-security/Releases/0.0.0/SmileIDSecurity.xcframework.zip",
            checksum: "b5a8abbac0a3aa130c649d2ef7d7913b9f8dd655be35956398fc1da81b59769d"
        )
    ]
)
