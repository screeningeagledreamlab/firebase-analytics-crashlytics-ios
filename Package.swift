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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FBLPromises.xcframework.zip",
      checksum: "cab9c9669879e771e6a72bc44e9ff7a784dac8b6417ab5f6d968a48a55bc1ab5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "5fd28efb2ca31c23cd468521b7c6bbbec4f706b00d86608596d9f0eff404afa1"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "8db880fa3597254ea02cde12432c99b22929d288ac22799d70e713efef516ab8"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseCore.xcframework.zip",
      checksum: "948e2e08a1d8ffa9e2f74a9eadb1cca02e6cdbb8bbc9813e66ba7370e8a7bd33"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "4bdb91f4c4dbd8f429ebef8fdc8d2b7093fd0dba0cfc0561fe6b5e37939271d8"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4c87d1c8ebd29c23bc62442fbfa4f1c038eb1f2277bd0997652011b97f162236"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "601112227c0e84561bc33acc90dec5dd56ddb50a942801601b547daa1d975325"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseInstallations.xcframework.zip",
      checksum: "427f076189c2db7db3712bffe4f90c1f91100e881f49cdaa17451d7d77bdf39c"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_FirebaseSessions.xcframework.zip",
      checksum: "b70b839e52cdaf890f361e9a500482489844f6759e687f7f5d775616be1861f5"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "10da0706c2a745055b3f2c350c8aab4cf1e16dd88fa5575916f2c9105212ea15"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "e2939df0201198b2f75cb1a6378b7ca23a1ff3a67ffcf7bf83d6c30ea7144d00"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_GoogleDataTransport.xcframework.zip",
      checksum: "e8327ed16fcb665da6c67c4996c8fbf199cf694e4663a27fac2737df044079d4"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_GoogleUtilities.xcframework.zip",
      checksum: "0c974db5a70035cf68672405c336273eaaee86296d8089643c2463f515b2adfe"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_PromisesSwift.xcframework.zip",
      checksum: "61d5d56e090c243be78b7748f75e81d2ba2233ebf376043d45da09d048cd0b60"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.14.0/_nanopb.xcframework.zip",
      checksum: "aa43051ac134dfb9388f73aa4ae7f3072dfcbce633610f74e2b4f7333a4ec8ea"
    )
  ]
)
    