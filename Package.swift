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
        "_FirebaseSessions",
        "_GoogleDataTransport",
        "_PromisesSwift"
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
        "_FirebaseAnalyticsSwift",
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
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FBLPromises.xcframework.zip",
      checksum: "11fa84324f2455706e21270da89f9842cc674189527f5236d97ac0fe37454bc5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "feff1c45501df820371dbc8dcd2cb583395a6d57e4d0ab72ea99aef5f59b5472"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "6f1de29554e3750a1f2211fb73535af5b80ad86dead195ebd01d698cef43ffaf"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseCore.xcframework.zip",
      checksum: "74ffad605bb43906c8a35d100cc71853dc4ee85414fbbb75651b01e3bc5cb9bf"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "45d7fa2253c1d0c37e8fba89b9521867ff87e8198e333940fca560b3c274e1d4"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "79d41c596fbd9eef80e1668bdf32e7d26704e606dd2b00a2a9c1a10f5c405290"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "b8f8be68b79e9e37d25c490ceed90e6786cbd4e8185dc740508b484666015e10"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseInstallations.xcframework.zip",
      checksum: "adf53f5c02f5cf828938771b28237ed99a50e53f7f5ed0c66edbc067880f9cca"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_FirebaseSessions.xcframework.zip",
      checksum: "cde8d2829edca77ccf97333cb88d5732b0b2b65d20edb17a269079cb426cad5b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "399043e2237eae20e90b7244c87e67a164fbb4c83f65b152588727ad8f800210"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "9e0d37cf8d6b3f30a2da8c3e59bdbcc295a534f0ea9a14aa424f34ad5c14c43b"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_GoogleDataTransport.xcframework.zip",
      checksum: "8ad6a8b416c5c7d1b9d946977cd9cfef316d82a79ef2c6422b81c90e566f635e"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_GoogleUtilities.xcframework.zip",
      checksum: "020bb681e43865fec8559df1460fbcae7c9b5493a8997017eb74f3ecc67dc6a4"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_PromisesSwift.xcframework.zip",
      checksum: "b1d46e40125fe37731b74649a01e29374b0b025d79057bbb42be484a9baf4278"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.16.0/_nanopb.xcframework.zip",
      checksum: "93c4defa27ab63dbc320d78efeb67f3a5d731c86cf0173596b939fab459f484b"
    )
  ]
)
    