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
            checksum: "805436b4a75182d3a9140446e23302a5848ab20ff917cdbf50deda90262d16ee"
        )
    ]
)
