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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FBLPromises.xcframework.zip",
      checksum: "77090a736891acd1da68401341af0897ecd90ce48e5dbdbef02585912faa7112"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseABTesting.xcframework.zip",
      checksum: "06102995962d9b30cbbf8ef2d6737220e30bab3cad075ae714fdf7294a853df4"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseAnalytics.xcframework.zip",
      checksum: "24921fcfc68af400087e6e032f211333440a5686f38443712ee05433283e698b"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseCore.xcframework.zip",
      checksum: "db2c3c0ab55db06dce49a5261505ceb8e92a01b48f3a101db134c99212dd6b68"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseCoreExtension.xcframework.zip",
      checksum: "6b3da462fbc90fd02d464776fa532feb04353c27239b8039dbbe0c90e3b94915"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseCoreInternal.xcframework.zip",
      checksum: "8a5adb747c4f660867a0fcde9b67d10eb5274e2dba63c2b7b9b04c42099634a0"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseCrashlytics.xcframework.zip",
      checksum: "814533d4839b99d118143ab91f960bd633220072efbe1f6794b126801514d002"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseInstallations.xcframework.zip",
      checksum: "31338ec65f3e774bc3c8950667cbe1115b5fb43efb78883fb7ffcafdd68a6373"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "ee52892d0f04dfaa8ad4776320833330fd52d3ad8029dc3b4cb3d8cefd3f7c64"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "27ade0a0fd0569c43c942c12ef858e8e254db07bf5fb9435c54fea686941e064"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseSessions.xcframework.zip",
      checksum: "9fc3ae2b1cdbfb56df545fefaabd6f707cb002ebea081ec9fc99b1eaede8bf96"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_FirebaseSharedSwift.xcframework.zip",
      checksum: "0885610f6e40fe421424a65bc393c1a4f26b678a1f7271b098f0561a59c195dc"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "70f013777ffcb9591b0d66a4cefddf6c9682717374cb504beb39a62b3ecc986e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_GoogleAppMeasurement.xcframework.zip",
      checksum: "10712e75d621f5b6383db6050ee79abe7e4bed545ef40b57f558fa1753101271"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "ac9eac6ed2b68d991dda42856e1fb081146eed8c017c61547a6c9de0c72124d1"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_GoogleDataTransport.xcframework.zip",
      checksum: "7e20bf32c4c6db1ff3e31a18be8e50f611eed4d85eb8127a0e10b3738dc12171"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_GoogleUtilities.xcframework.zip",
      checksum: "af69b082eac955a196f03c0bd026c149ad01fc6aa6f93720fc44212615d1411f"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.0.1/_nanopb.xcframework.zip",
      checksum: "5fedda61a7b03621040ec14a7d1f499aa49147de17476b1819fdbf2a2d744726"
    )
  ]
)
    