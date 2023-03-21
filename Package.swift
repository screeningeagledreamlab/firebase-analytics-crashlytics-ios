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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FBLPromises.xcframework.zip",
      checksum: "8be888a95261311a4e18ecf1ca28cf356e1506515735fbbe0d31646fb505b3c3"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "7e7eed722cd113de71497e15f9b8d77abc2f7595528784fcff3a5472ea85d913"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "4247bbb36451c7b75955bcdb9e1501b42bb1c6fe94698ec919177ca8d6c40e04"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseCore.xcframework.zip",
      checksum: "69efaa11399649136f3babffed26d5077332e6e16b6ca325b0ceca4cbf6df82a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "fd568ef9b294129add6afda347bfa3dcfbfcb0f26766ffb9de0b73f23a2645a2"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "2f5b8ea2b3a345df8e0ae191dfab4c91474924045cb1b62173feff8f0ba7a4e6"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "a8ef4472cc255e8639b0ee90ce68aedf569b0a57a4f934874408b0f0249b37f8"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseInstallations.xcframework.zip",
      checksum: "24b874000d19fc4eb6d3881beb7802470de38f179fa99af5e637a91aff0b4fff"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_FirebaseSessions.xcframework.zip",
      checksum: "b3c2ffd60569d65b8ff1a1ddcf60d9f90ecf59b2a20e3444a56b7d29ae76e18f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "10d67102b5bf321bcd0a2629ced8921b04b8f60fd4e8cfb58cc9ac1eec94e108"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "cfe56492c803bc07f6a4fc0a7ddf6fbb3e55792166a8f2edfeff564134131389"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_GoogleDataTransport.xcframework.zip",
      checksum: "0371a8e011437987f184244a34fc74b55a6ad0bc69da05ebfb40708b2baf883b"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_GoogleUtilities.xcframework.zip",
      checksum: "fb825ff58c37ffd132aa8f30f4aa61b8caaa9a7cb77d25d2eb30f15637738f91"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_PromisesSwift.xcframework.zip",
      checksum: "1eaec1f0cb8f09efa43cda7e20b46b9823e979297306c6016678f50c35921393"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.7.0/_nanopb.xcframework.zip",
      checksum: "9fe9cf70c47daf6fa932ceacd20a6758f61d6766f6ca2b2169c88fa046a80e0a"
    )
  ]
)
    