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
        "_FirebaseSessions",
        "_GoogleDataTransport",
        "_PromisesSwift"
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FBLPromises.xcframework.zip",
      checksum: "bdc64f4653a7e96be17184ad67cfc2b454ffcb5ff9acca3c63463ba6afffde36"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "6aef5ee4b9b5f02761ecc96e4bcdd84af4d6bb8f83938c8b42830e4a08f81873"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "08ce06dc55d4e17e3a512495ddb4bbe61fe1546e610d844b04c5ff855d1ba92a"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseCore.xcframework.zip",
      checksum: "0f6c01d50f18747c5d8d41c085edd45b5b46403d89f25726f8e1c0f175004529"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "f2f0eed6f6dd299f669816cb07deb1a7ae03241e1dea1766dd74e281f5d44e1e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "f7ed202df0a24789dcf71d2dfd6d0ff43af37bfe4c100c06361554c4e552c531"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "cfbac1d7fac39454aca674fc7b93f09bbe32d843432868fbaf4035e995994cd8"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseInstallations.xcframework.zip",
      checksum: "184118b104848faa96c0269487a6030ddae730b9275adb48f02bbb49737ea5a7"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_FirebaseSessions.xcframework.zip",
      checksum: "5139a344a38b67daa9d9c5cfbc2cbf2f2d104bf71a73cbbc15c588ac2778be81"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "e03b90550063d7c4957b93080ac6c1f44e9265b47887a780bc05b5ce94283096"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "4b71c7b8c010e6a329f9e352a3c97f55c836c907db69981ad3a99d16f6e1695e"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_GoogleDataTransport.xcframework.zip",
      checksum: "b0e78dc8b0bd1efdec548659f7f868b83c22398ab9fcae20dfb9c98e426777e5"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_GoogleUtilities.xcframework.zip",
      checksum: "0fc3b4595cf872efc3915398167dadd716a5538ee295dea56a118766d9b3dc24"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_PromisesSwift.xcframework.zip",
      checksum: "ffa18b2c64cb2827435eb3fb07cff7e82e8e4490f3a1eed9bb6d5293b7546c00"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.13.0/_nanopb.xcframework.zip",
      checksum: "4c1f0caadecc08aa273df928c9e82132d3b997dc9a9549cb12ea2f01dbfb4433"
    )
  ]
)
    