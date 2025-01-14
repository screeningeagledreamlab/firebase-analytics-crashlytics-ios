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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FBLPromises.xcframework.zip",
      checksum: "26a3931d5ca0fc8e30ddafb7f0c7c3524c119c771ce872be60aa0555ce938e4c"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseABTesting.xcframework.zip",
      checksum: "b569894ee44924ec897b739fb7ea6dd86a15b88b0ffa5dfb230ecf2fd46c50e5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "972f494d923c8481828e8c8997aae3e250356492c45cd22a0e4b33486578d16d"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseCore.xcframework.zip",
      checksum: "4f3c4d94d659350091b4ec39c16f3b2ee0bf94179f35d84206c2857a8cd7a89f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "21a63c6ff22e02c755238f5fdfa7bac4dbffd95d43503ceebffe76a12494ccf7"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4f9b27c0e0009a1c72b976634a928add8e91e8bdb4c4a8be6bdcab2f053bdd28"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "1690501b05c44d8cf710759c07943c7ee9853391f75ac1d4552da90aeb61ca43"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseInstallations.xcframework.zip",
      checksum: "35da02e673f8fdcb6040278f2f2828ef8bc7c956337a073c3fd377d098087428"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "5fc96bf489bf92e53079d4194b2b11d70eb04ca814165b55c05c5ab7aa7a95ec"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "ec8e97a6f537c7c3f3f2d790a149952401127cc003b95ac0d6bca036ce6ece46"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseSessions.xcframework.zip",
      checksum: "845b4e8ce9a88e537e70b6187f3af268d11f19a24ca5ca9ac28b734ed7918651"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "dc730e2bee6069883af546d162a6e2d9e1cda10d2d81be7d630edb1f096e6e73"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "d069fd3930c2d3b0062723b8bd2f68c1002926f3a712a35ed95be41692f8dde7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "f8d3e36debd38d05bc04c942a8a0c51c73f6a1f2dc974e55b8bc38ffbec43213"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_GoogleDataTransport.xcframework.zip",
      checksum: "a0c2915a8d398eaaa1e63c342103eccd5f1debaf1831573fe602f5bb8ca0d45a"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_GoogleUtilities.xcframework.zip",
      checksum: "c142c4e03b25ceb561b7c5d4a1ca33aeea49606adebd06e119ae34ea258b0e2a"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_Promises.xcframework.zip",
      checksum: "ea85cf8998b58da3206e6ce986eb7b2e0e73466f4b29772612d2f052c2582fef"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.7.0/_nanopb.xcframework.zip",
      checksum: "5a22ddc63168c70924e085ca045fe96ebeda3abddb5b6939c79b48b275002f78"
    )
  ]
)
    