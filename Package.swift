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
            checksum: "30983ca03d99d65f9fcc6e596dfaa67ff8e5bad141a9364b55b376c5220315db"
        )
    ]
)
