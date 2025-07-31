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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/11.1.0/SmileIDSecurity.xcframework.zip",
            checksum: "4d9c9797daeff4b00214f842ace250258d45064bb4e496ab349d7c4c5d1c7c8a"
        )
    ]
)
