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
        "_GoogleDataTransport"
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
        .target(name: "_GoogleAdsOnDeviceConversion", condition: .when(platforms: [.iOS])),
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FBLPromises.xcframework.zip",
      checksum: "ed84310cdc452d9de6d8bb9eb4352bd830f0f91c0dedfde66bfcd206d7a3575e"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseABTesting.xcframework.zip",
      checksum: "689c9e078d09cd80a6e376defad1cf3fef4ed83add78bfab95f8d6029ce69a82"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "736b30a8ed3df205db57bdb6ac0205e88d3d9100d8bc1e91d6c7ac04da2896a9"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseCore.xcframework.zip",
      checksum: "2604ab0f8f0dd65ada55bdd9359a03780525e60841196fa2a6e31f6773c9ad90"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "1517cea3a7f09a4ca3ac974e389b0fc02791304dc393e984b53e56201a981368"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "18085fc2608a9e3023cd58edcb4c006675912a0babee48cc5a45a09ca73352e9"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "fe5ca8201901e1b7b1cfbc44a759dc9407b9dba6970f0c2e8e19d3ec73a74eff"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseInstallations.xcframework.zip",
      checksum: "3730185e933389c45d767b8834fad5de6b2b510498cc409f7ca0530c379913d0"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "d52858f21297a37162a669ff7f9c18337c730b1b7544d56122e1f3c29f0b1f14"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "660ca9c0e929ade37b8534e82c22332838c6bad992113a574e385ec803bc8bb2"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseSessions.xcframework.zip",
      checksum: "dc7558806db1c7178557e0233855783440785b7fa6e8d02768867b1728bc1865"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "60acf0f5aab54163da381563dab6fb20173a4d28851dc17b3288ea623fab7675"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "bff8551b24f0a0f691b14d7233113bbbf601cb9f8932d437735a063e1c14d813"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "380d3b7bcf740af124f3d3b49a152841584a54edd3b34995ffed4fa5b4fecab5"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "43b7defe1db844a22c0f1ac67a57a5bf81828187df75bea228c627464ed471ce"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_GoogleDataTransport.xcframework.zip",
      checksum: "7383a30714aea66fb4aab8a2a66064727ebc6f3b8763a03d7fd7254c999c0f11"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_GoogleUtilities.xcframework.zip",
      checksum: "6138dd221e40dd5247b9f93f921e762dd2ed572809ebb4ff094c05d28ecefc06"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.1.0/_nanopb.xcframework.zip",
      checksum: "9c4848b23e2bc5d1db9da0f531cc133bdab6866251bd9846dbab331075828359"
    )
  ]
)
    