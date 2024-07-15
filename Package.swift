// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Firebase",
  platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v12), .watchOS(.v7)],
  products: [
    .library(
      name: "FirebaseCrashlytics",
      targets: ["FirebaseCrashlyticsTarget"]
    ),
    .library(
      name: "FirebaseAnalytics",
      targets: ["FirebaseAnalyticsTarget"]
    ),
    .library(
      name: "FirebaseRemoteConfig",
      targets: ["FirebaseRemoteConfigTarget"]
    )
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Firebase",
      publicHeadersPath: "./"
    ),
    .target(
      name: "FirebaseCrashlyticsTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseCoreExtension",
        "_FirebaseCrashlytics",
        "_FirebaseRemoteConfigInterop",
        "_FirebaseSessions",
        "_GoogleDataTransport",
        "_Promises"
      ],
      path: "Sources/FirebaseCrashlytics",
      exclude: [
        "run",
        "upload-symbols"
      ]
    ),
    .target(
      name: "FirebaseAnalyticsTarget",
      dependencies: [
        "Firebase",
        "_FBLPromises",
        "_FirebaseAnalytics",
        "_FirebaseCore",
        "_FirebaseCoreInternal",
        "_FirebaseInstallations",
        "_GoogleAppMeasurement",
        "_GoogleAppMeasurementIdentitySupport",
        "_GoogleUtilities",
        "_nanopb"
      ],
      path: "Sources/FirebaseAnalytics"
    ),
    .target(
      name: "FirebaseRemoteConfigTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting",
        "_FirebaseRemoteConfig",
        "_FirebaseRemoteConfigInterop",
        "_FirebaseSharedSwift"
      ],
      path: "Sources/FirebaseRemoteConfig"
    ),
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FBLPromises.xcframework.zip",
      checksum: "3a1a901851fc4e4178ccadd5f38f140d3bb34fa00673912a8573a95e0eb629c5"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseABTesting.xcframework.zip",
      checksum: "cf98a692d559074011f0490fefe8d2d2baa4c9385bfd8f7a190aee9d138f47b7"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "a6ddbdfa62c1ea7b4ab675e5ab671fc5c363f1e41d6b8a8d85012347747bc7db"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCore.xcframework.zip",
      checksum: "6382d6527fe09743e24c07c0bc9f6a0f7572049a3b708eb43cbcb2f062e25ed8"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "539460e3dc0f3ec2c561be9b9ff65342170f257de6813669df1f9ebe01643dbe"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4ab7cff585df6ffecc78f1ec5d6939a5a7cd2ab4726c31f7a161194d69288e24"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e71071669bd4f6c95583c29dd98b36c1b4731166b16728631c118091eb3b7d8a"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseInstallations.xcframework.zip",
      checksum: "237b2b5ec18d709ec18f382ca3c3b7e650c614a9a19e44e1aac2cf843d999d32"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "4a591871d42822127738ae343d311e9f91c35cf8c955f9c131a8b2faf792cf7c"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "7b07fd20b0d7aacc63c1e8e661120c74b31fce13a86561e3730b517531bbe160"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseSessions.xcframework.zip",
      checksum: "a842d5cf24ae3ef5eb99bf9937ac8b0b09002baf96d0e0bb70279cfa1a6fc3b3"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "e466f6d083e58650aff8febe2971b0b074a173a508f1002a1d820caab0b38e0d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "10a35293e89347dbd0c12e2b71abd2ce9b151c4f1c07e5cc8d96982282573261"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "5e43544cbdf826eb83b1bb59b7920f9b9675a4f37ac4873cbff342e17b89368a"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleDataTransport.xcframework.zip",
      checksum: "f2ce2dfad2b49a46b82e69e0c8fe09f7afc3934ab9cee1b7baa5ce5df03f893d"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleUtilities.xcframework.zip",
      checksum: "57da2a46ec4308397977a541eaf33393fb51ec3332e59eedeb176d3edfb79203"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_Promises.xcframework.zip",
      checksum: "cb7c4c6cf836df8b1637015a4f22029eede98082cb8adae340c8afd2f7dbc62d"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_nanopb.xcframework.zip",
      checksum: "c6e4af094402c4ac20c25f012297f37c13e437e61e8df5edf5034c2097403590"
    )
  ]
)
    