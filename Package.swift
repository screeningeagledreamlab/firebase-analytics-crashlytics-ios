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
        "_FBLPromises",
        "_FirebaseCrashlytics"
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
        "_FirebaseCoreDiagnostics",
        "_FirebaseCoreInternal",
        "_FirebaseInstallations",
        "_GoogleAppMeasurement",
        "_GoogleAppMeasurementIdentitySupport",
        "_GoogleDataTransport",
        "_GoogleUtilities",
        "_nanopb"
      ],
      path: "Sources/FirebaseAnalytics"
    ),
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FBLPromises.xcframework.zip",
      checksum: "50eef7d917d9cd47c37acf79abb73795981c22168fba77305d9030d11bd495d4"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "ab33dc0f77afacba257bf22ff9b508e7d968707c7f823fecb1858d2d24c1d551"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "582059571d596dba221350f7e0df8e0196b4b47c7ea56527aad03be7ad26e18c"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseCore.xcframework.zip",
      checksum: "073942fc7ef12caa7d7942633a62f743a9504fb061e0cce6a31145c247ca8e1c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "0210227d3c9ef839d55f0a2dc97f55e9daed4983cb20ba61562e73ce0ccee5d5"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "484f2da66b5baf273dead3ce0165a855edf3a321aaf06c4d6dde0528405e83eb"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "7615a057b80b33c49c5f63327435d2dceb1b9c012e53b7649373222a185bb4fe"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_FirebaseInstallations.xcframework.zip",
      checksum: "73d4f7ed325b3184dfed2319338364c9cc59d9c96735e14d15906b714c14c722"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "30b74a0f8693c4dd47c99f672877a47ec437f4075d4c44de960cc4af5c9f0533"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "72fb9538a6bcc8e03e59448c52aa2133bd7c25c4ea00cabe819b7188f03ddb15"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_GoogleDataTransport.xcframework.zip",
      checksum: "3d730595cd8fcfdca86a6adc6d39ded1e16f7f33a807041a51dadaaf8181ea5f"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_GoogleUtilities.xcframework.zip",
      checksum: "b573c3ea2816589f6f28b13d44596726e313c354807f7c707a919c6ca48144e3"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.5.0/_nanopb.xcframework.zip",
      checksum: "3cdd938ee4d8214132efbc968fe208dd5b2994afd61dd9e49500b902fcd8bb84"
    )
  ]
)
    