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
            url: "https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/11.1.1/SmileIDSecurity.xcframework.zip",
            checksum: "44b146d6f685db2a465ca453d9b64c19f8bb2b2f188ccd5ef709c04f44da4b1d"
        )
    ]
)
