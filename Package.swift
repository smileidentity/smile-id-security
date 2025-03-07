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
            checksum: "f05cc236fd9e99258d950dbec1ffb2219b14cdfa56deca2e01608880615b40d7"
        )
    ]
)
