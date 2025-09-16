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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FBLPromises.xcframework.zip",
      checksum: "1b3da99c8f28e7f77217b88870e2df105212f6ccf72184eb0bb7b90586cb02d1"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseABTesting.xcframework.zip",
      checksum: "b4d4e3cf64e3f6d86417e2a5efe0ac41433105e7047faef3513b0175dd5e00e6"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "f531af5feaedd94b24c12d1993aeae91feda3782697595a1f5f5e1889a4c6b69"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseCore.xcframework.zip",
      checksum: "ea11ef62dfab72ccded97805a46cc68adb9abe8312cf0bbf822ebf277a692a26"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e8f6714acbd250b23270f4bef384f84f427b9a4225683833ed81b7f57cadac01"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "12d2321a6c22b5272ad22ff423c24de236cb485d8498a10d79a971a7a3a7e09c"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "9199137912c507742a1c8f31ab94cde835d693803d9c62c59bc46ad7c58254a8"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseInstallations.xcframework.zip",
      checksum: "eb27fc35146d0dfdd7ccbad619f00461fb427a40888a40b2c8d39f20c3e50f91"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "a33421422ff8635c7ca8bd7b9042c4bc4dc6595da9ea94638d49d9191bca55ed"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "03968a7878142b1925be31889a33e7f0dffd99b5c69a9d5065b9878ac0d9f497"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseSessions.xcframework.zip",
      checksum: "416ae5aae8c3e9b050244c8f150ddd8d46a92feec77ecbe20df71ea9b2b49a60"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "664f7a9e0c2df196420d8e022d36ba9011a181e75119f2c96170a5583e0eb3bc"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "3a3d35a48703b429c7f3f99b582c3224ca57c09c551e22372d798106cf27ba9d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "eef039ef611ab6f2f550f5c6bde8f22c300dffb619547cfe8566885c709d7692"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "4a9c37c5176e3c4e2a7f06c394def6d634149638497abc0e940752011547bc64"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_GoogleDataTransport.xcframework.zip",
      checksum: "db90c6284b6001f84cef078d271a5a7e2cd9d4f33e8bdb86826fe119556df3d4"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_GoogleUtilities.xcframework.zip",
      checksum: "09a80118dbe31b92eabda607faf5087135f6158de47903d8f5288b28394aeac2"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_nanopb.xcframework.zip",
      checksum: "7a83870d3c6832c44a48de7e06c841bf0f56d3b40965d8dd7f6f360684d08643"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.3.0/_Promises.xcframework.zip",
      checksum: "06f172c85a3d4047d08dbf1b5bde92b57ecbb36fca60a6a93eea2f120f5ae46f"
    )
  ]
)
    