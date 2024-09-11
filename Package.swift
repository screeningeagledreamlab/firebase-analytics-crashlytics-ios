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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FBLPromises.xcframework.zip",
      checksum: "a24ff15d123199e68262450a4ad1a872caba798793d21731391aab50298da15d"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseABTesting.xcframework.zip",
      checksum: "29fc9e2d05e85dd835940efedd0c13c0e797a745cc63c3a8f4a4a8b5a3ea2e4b"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "c02d25a5c5325254c7699d058a4b947f66b99319e4a2c96b71ba8c55ab4d7a9c"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseCore.xcframework.zip",
      checksum: "11a4aa6023ea6a62b9d91c7b68520bd7d0adbbe7c3b57e529ef35bbdf73bae73"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "c3e67b020ec962c412722633b4ba9265697b0a837cb5a19d5c004c95de8b0937"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "588bef74f8aaa2fa8ced87595975eb133d437d46fa0d43a49ae485be919804c0"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "f7f363a02df479f14026c37f4f0f4c61e7bd64cacd7bf5dc23bd6aebc80937ae"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseInstallations.xcframework.zip",
      checksum: "21182929a0797fa948c92edf9755c13aff23d9efc1f2efb3fe996d32fbd39493"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "20ca8c135ed2489b28536c558696f2175ab1d302f9afa351bcdb9f91b7d19187"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "f15f1b0e53ac8fc1f81d7f70cb0654a8c75bd0cb081afb4d7d54a0f3d9a2c3a9"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseSessions.xcframework.zip",
      checksum: "9de3a705c2bb76ae08de62beaab79e3efb5857877c3e9587749a91650edd4d47"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "6d4b513f81933df05d8680fc0f729056edb35932521feeacaf5d48e7d32b3c44"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "3fd27103cb4d71ee39d430753def20429bb5c188544f58e5d8f2ed2436278f78"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "4f16d7ee3f5bcdf558bdefa3ad3403d4f5f62062c1e4700024eaa2772082c990"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_GoogleDataTransport.xcframework.zip",
      checksum: "c0ef11518a52a2bb9a286b2f32dd982a4e2dfcf891d386c64100582142803441"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_GoogleUtilities.xcframework.zip",
      checksum: "6d46c977c134fde943733cb385512b5e8ca25d1dde90a0f2eec13b64291f68d1"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_Promises.xcframework.zip",
      checksum: "c0e0d888736164df7445f1fbc218d96e22deb93afe20c7976b18804e055b63cc"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.2.0/_nanopb.xcframework.zip",
      checksum: "8740a6a9ce0dda00f7921efecf126e6aba8f68fabf7bff80e1dffe66464ac984"
    )
  ]
)
    