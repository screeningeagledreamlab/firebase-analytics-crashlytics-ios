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
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FBLPromises.xcframework.zip",
      checksum: "2bb9b7643470f8ef1be70c969a46fb15020e6470952beb858b9920a129678870"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "3959e93f60b6c65bf23d89770bd15ce4cc10ed7ae734491938d5e193aea04523"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseCore.xcframework.zip",
      checksum: "d8e26f97b1a6f4a7cadc9e667d3399c0aca46b438e86e3811c31d1ddc5a2bc2b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "3c195bbf9fc204efff4385c93c64f6b668d681809e6fe1e057a04bcecc2ac391"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "792f0aae66261191148f35b4cecb63fe88c6536b30bc62c54c82ad503227e89c"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "75fc7a1b4b3f49d88842af8857aaf6a9a248065e9be515dadcda8ab1a2802f80"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseInstallations.xcframework.zip",
      checksum: "ebed4be23e6caf5dab8909ed5d88f95c596a8c4186a9660ad402fd7fec84b8dd"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "af139118db55bf25c40d015dbbce325d800bffd8bec60005a6d85f5a1282cbe7"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_FirebaseSessions.xcframework.zip",
      checksum: "704b066636bcbac26b3c50d88b335ed604599fc037834a5ffb11b3655d1dd5c6"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "28d7ac38be48354a86029c4ca8a4a29a21617384d852ab11bc55c849cbdf64cc"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "115ce380e3023a6f5f976e077be16da547960fc6d09bedf2979bb0ef38e83b6d"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_GoogleDataTransport.xcframework.zip",
      checksum: "10eb6d82d780802fd979962e37d292bc57d565cae25053d9983b162a8b01d9f3"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_GoogleUtilities.xcframework.zip",
      checksum: "a36beb15257f521a89c8d5cee572d3db1d44c96afa8f2b89872a76b9a09c212b"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_Promises.xcframework.zip",
      checksum: "ef1d0a96ee9d4a10ac4a4ce4b8d716ad87ce570778449b833cc8f6554c2938f1"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.24.0/_nanopb.xcframework.zip",
      checksum: "ee8b09f23499c2a509d9035e693cf7eda6cb22ae6c08bfa8264e476c1820aee9"
    )
  ]
)
    