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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FBLPromises.xcframework.zip",
      checksum: "90072159fba1a25f7e953ef67b618fe5a9b8d71b7ef77220e72945bd26f3cc5b"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseABTesting.xcframework.zip",
      checksum: "dc14a949c82fcec9bab735f9ac8ea7d5ead968cb692301e27dbe1b2d5e0013a5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "cf17060b32bb7b90d7255c95e072553e8341b8debae9485c13bd6e0c4dd823ae"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseCore.xcframework.zip",
      checksum: "a5ddc8f9e565aa1c7ed3f69e581db07a23a4c56c050482c0dc6143be1d06080e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "1e90f366046b2a6e7e4e4806bb263dee80113920d9b13e78842d09828af73d3f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4753d06531dd71294f9bce03c9f76a1492a070c5da2d802a16b4d0474c37f3c6"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "a3107cc8ee877f74db93a5dc8774cf61887fd0c9b64a1ea44074a51ed4c56797"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseInstallations.xcframework.zip",
      checksum: "c423a2db7ec441ad033bd6a99856540858a5ab5c541cb26524227b57474d6778"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "af43c4bfbec02ff18b4b43917a4b8d86d874280d8db0bdf241f435457f9583e0"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "e2dd69f79ff5b3ef8f43c6a7564832f03a4b8e5dfedd3770ea27e7d3350e8d4e"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseSessions.xcframework.zip",
      checksum: "31b0fac81a6b5852ef040641904132131b4582ebc2615398a27f625e626d8242"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "118e495f06339d7de1a4c0108be9464edb9cf2a7d28dbb7472279da7afe48399"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "8d57c1fadc6799394c5b3f9d7cf1590c8810f794272cd7dd4b1bc5ed2d4b26b5"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "5a7cab43a2de4d260b945a0532d22d1d30bbe2bc187097f76fcdbaf627e693e7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "76f8198c786d58392f3b9fb9458eca6e0b88dc051bd86404c9df85b6035d3f1f"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2bb3a7f8ac2a4880718ce218615719e9f20d4b25ffa7b81dc578d885654a70af"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_GoogleUtilities.xcframework.zip",
      checksum: "2bc558fb221371fbfc00ff795d7680ab32b643aa2069e58f6b047021e94c8a18"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_Promises.xcframework.zip",
      checksum: "a2482661a0ad5dee5722f38e88544510520c26bc3cf6d270b076ff92a28d3408"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.15.0/_nanopb.xcframework.zip",
      checksum: "4107ec76f79c5677e9f0fb4f83a0a8a28333c35f6eccf0c412d0ce2c357d230c"
    )
  ]
)
    