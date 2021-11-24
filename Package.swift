//
//  Package.swift
//  
//
//  Created by David Krystall on 11/24/21.
//

import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK", "AmazonChimeSDKMedia"])
    ],
    dependencies: [
        .package(url: "https://github.com/birdrides/mockingbird.git", from: "0.15.0")
    ],
    targets: [
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://amazonchime-onto.s3.amazonaws.com/AmazonChimeSDK.xcframework.zip",
            checksum: "e371d250d199136728b41605cdc21cdbf23b05e70a88c99c59ae25f29b6c094d"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://amazonchime-onto.s3.amazonaws.com/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "ea602f96812010f9baab72bb16bf0e6398515cbb4054345a8373e0606c8860f3"
        )
    ]
)
