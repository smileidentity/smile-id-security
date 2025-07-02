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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/1.0.2/SmileIDSecurity.xcframework.zip",
            checksum: "7bdddafea1eff55f1d26996eb73466a7696ff23b8b8371a16397f5216ec845b5"
        )
    ]
)
