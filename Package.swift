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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/1.0.4/SmileIDSecurity.xcframework.zip",
            checksum: "40cf4ec80fd2cdca4f6d09cc987aaa9c9968ac70fbdff86932b8982c6f524780"
        )
    ]
)
