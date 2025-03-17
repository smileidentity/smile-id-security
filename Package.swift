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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/1.0.1/SmileIDSecurity.xcframework.zip",
            checksum: "488a2cdcb2ccef244cc76218d99f560d346e330f7f42a562578998b544628a39"
        )
    ]
)
