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
        "_FirebaseCrashlytics",
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FBLPromises.xcframework.zip",
      checksum: "069227cad5dc080a7124c423bb0afc02197222c17b5928ab6bf737200d6b6bdd"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "ac68613cf9f7caf27be41d4ca2e568c175e0ff3724b2b6ff839b459e24f6197a"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "3aa64f435b8f65be791b8eb7b085bc0b2920a6db77324c2100e44db2238088bb"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseCore.xcframework.zip",
      checksum: "96c731f6e1b920621a23083446b6b633802e6cb8e0f87f40580013b2632fa111"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "0b021bd715698864f9f9db2376dbfcfb377a69bf34f505ef1520a62c697531ab"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "409b9e22b360a2e8d7ea5fda715932f702817076ec8a4fedbd189571fb313702"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_FirebaseInstallations.xcframework.zip",
      checksum: "9921a60d0ca27015f4b7fb6343057edb7c5baa5506a3436f8fb873580322da01"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "efd4e1878e78f273055a4ce1e5b60c96a22faada51fed7929629f2c2c96c19c4"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "7f7546fb59c6a65e1c1fbffdcca7328a46c39077127b4a68872f485912f0879a"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_GoogleDataTransport.xcframework.zip",
      checksum: "1287288fa22c33f834c0e4f4fcc5b2c31b9045d5f8e0251fc607cd26b692cebb"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_GoogleUtilities.xcframework.zip",
      checksum: "429eec5b4d81fc35c2d2c6c1323934392dbc2f03e22e8b50901b89540ddd5b5c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.2.0/_nanopb.xcframework.zip",
      checksum: "4546ea52a3d115593f46bb9f5584288815799b713685a7bceb86a364cbc60146"
    )
  ]
)
    