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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FBLPromises.xcframework.zip",
      checksum: "a79106bda6e4cb251a7798139225b0436198ed545689ec5fd5d64fdceb450068"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseABTesting.xcframework.zip",
      checksum: "e6df86add9c78d93434d1f4231fc348bb1ba10cfbc12999e5b6b3a4b1eaebb72"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "9898b4699b3f5a9fafb1d193fd88188919c78d57c093c679eb4b9282a45a2ae9"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseCore.xcframework.zip",
      checksum: "803664926aa13ed5b1bdc0d7933b5928f6aafb3a3352762b5193d245045c457a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "806e13ac1cd366fa1e6d3f41cd5033fe8b885d52f1337b8b3abf0251035165c2"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "481f100fd24889e776fb57dd0a5c1513d04fe96f95c9691dbfb162ffaec47eb5"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "0b6bb5aaa9775982a55e7407498376623ee2cc8c94b7c9628a5c376669a0eb2e"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseInstallations.xcframework.zip",
      checksum: "b9d94aba8151d941b29fc2d78885e47c5a793b54d9704e3e0b9926e769083801"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "19590cb6002cc751d28745f1ab2385dba62c0b9f35dc653457c7647a28d0e090"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "040544dd99bc1e50265fa024bfd45e8bf4793d969b36686800c01fb741c25d5a"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseSessions.xcframework.zip",
      checksum: "21732f1a29d752a5213be787b2c3fd1cab9f68314ac3b0a3b70c75bd4f8efdee"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "72ee520f682fdffdbf9ddbb0c2a29a5e55559da740137e5f3d465e1f795a5f03"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "9049336e7ea07eb70294b8e35dc52308d7fd4f66f1ce4589d1fcdedc515fee36"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "4f48ebec166e085e0f72c0e76f6711fd54b9366a091d33e11488370273f49ea0"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "646ac9012937a95c0b03cdb144bebc036fb99a7edcfe44f4172b79b9d43bc9aa"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_GoogleDataTransport.xcframework.zip",
      checksum: "e88c29308a8432763de37f5df0f4f80454a41e8d8a7adc1fd8c28c5a73e7ca93"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_GoogleUtilities.xcframework.zip",
      checksum: "845cccb28a4c2b9defab34a08b0d75fa68036bdb4b3291a8dc8fe3f4671fbe47"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_Promises.xcframework.zip",
      checksum: "28fc818e165632b96b930c3b06e1b0c8675e47e3bc9b58a9d903175db67461e4"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.2.0/_nanopb.xcframework.zip",
      checksum: "2628de8877f211f402d5bd1013213fa5508bfccddef829a20164067cb4d01414"
    )
  ]
)
    