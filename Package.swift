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
            url: "https://github.com/smileidentity/smile-id-security/Releases/0.0.x/SmileIDSecurity.xcframework.zip",
            checksum: "fb8cda1509627157d9b3f46ebbc5a78019d17071fe4429639e0eddab8acd"
        )
    ]
)
