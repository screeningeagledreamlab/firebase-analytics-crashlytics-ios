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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FBLPromises.xcframework.zip",
      checksum: "4e515b8753d3e1abddbc40c19f949c4d2e299a3fe049a153ab1ebfda2d9db3d6"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseABTesting.xcframework.zip",
      checksum: "78d016f2068992245a0c1a893d6758e0ade1340f438222d8065bd5d75033ff7b"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "1cab30b148c49c7ff81215487a292659df5202f20f5b824aae3cecc2de1d9436"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseCore.xcframework.zip",
      checksum: "b34eb27fe89f113ee54083c0a40f1954c535eb79cb621a8f418b78ddc9e0674f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "d3368c4cd20fdd967344e3ff08af956d86990ea3cca70d29286acfbbbc8ff721"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "693ee10a75b6c2f910fc276d9fee678fac2e5a99432a949660570f8eafd05957"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "b63cb02e83014ab7f57cbd85aa5380ae670c9b0b48148dd6b16e5a119f20db3e"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseInstallations.xcframework.zip",
      checksum: "2657b64629537c7cc054f6d12eff7b832c73fb4f81310ba9e99990d501e59790"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "dde512047feb16d9eda6fc8c6f2b470c8e5d181892cfb2b7ace190a64998aafa"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "1e7437cca1b402a9399077e0b0adc7aa6e48183c3275dc2a435e1a9df310c930"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseSessions.xcframework.zip",
      checksum: "0f7e953fc22b614c9cfce3da14f0f18a367b170ffc21390eb8951cd5d04bc805"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "fcbf06f2d4492e280cc366ef304db895f41a651d51a5fb9ce7b1002662aa84e4"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "fd8b7fc1525bcf19c1894b844afdfe4dba236195fd2dd0417764d1ae088eb1e9"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "238a2c884b8d94f1ca4b2a3867e84d20f62806856296c5a92c2cc81b927d7f73"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "320944cdf50a40e3b26792ed4cac79e6653edc0e13c5be5573e015c93bc0cf1c"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_GoogleDataTransport.xcframework.zip",
      checksum: "83a542c5f8271bf73c6875821787c71a622ac96a1ff46c092e88d8bbeb4dac7e"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_GoogleUtilities.xcframework.zip",
      checksum: "ed4d4bec208115d6ed77b9d7b654bac2e3cbafc52110a8326c050fb86ba6d72f"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/13.2.0/_nanopb.xcframework.zip",
      checksum: "8cd8fee18812cfb0bb08f5d1304931c26b41f24f4356142439f9d96833d8f671"
    )
  ]
)
    