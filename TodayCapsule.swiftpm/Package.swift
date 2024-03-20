// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Today Capsule",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Today Capsule",
            targets: ["AppModule"],
            bundleIdentifier: "funky.TodayCapsule",
            teamIdentifier: "MT99YM3KLX",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.orange),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .locationAlwaysAndWhenInUse(purposeString: "Unknown Usage Description"),
                .locationWhenInUse(purposeString: "Unknown Usage Description")
            ],
            appCategory: .lifestyle
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)