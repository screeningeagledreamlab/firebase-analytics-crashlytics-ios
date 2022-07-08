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
        "_PromisesObjC",
        "_nanopb"
      ],
      path: "Sources/FirebaseAnalytics"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "6ac5282bb9eabb414ebfafcbd36d0df0a3d9e169b60029056283b2ebdb2e6440"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "80caac74b0b63d76bf3927ecbe745595ff1384525c319d590dbe77f641fdd0d1"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseCore.xcframework.zip",
      checksum: "9c1b3e7bae734c11c7399914514a523fde092f94baf3d1b3945e4e88d7064537"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "2b3760bf8ad69ba49f4bd688e7159044d16cdb9663f617e984b51aebca290c96"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "9cfdac2ae0ed221ffbb8fc4aabf88c9016eb8bde6c43bd057c2f172bef887877"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "fba63846453a6a86ea817228146133c7f7c505a178bd6eacc2af640aa9e2e53f"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_FirebaseInstallations.xcframework.zip",
      checksum: "09324a6237f4102cd8caef0fdcc18c8678043da22b342c65b587488a5c058528"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "9dacee2ff4c11dc7b9840e2b12284503c506e631081cbe0f8693928bdbed03d2"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "58b4a390a9f9fdaa9883f2aee208821741702a8e473137f139516ec79cd6c246"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_GoogleDataTransport.xcframework.zip",
      checksum: "4a3c6f82f9ea5993eb914289af3c5d76e62815a1727867f414ef627858123b07"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_GoogleUtilities.xcframework.zip",
      checksum: "3ab8b2ba6e701e2735cd2388c1ba6fbf226dd98ffb74968d879fee4af97592f9"
    ),
    .binaryTarget(
      name: "_PromisesObjC",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_PromisesObjC.xcframework.zip",
      checksum: "4ab346b69ba86f752a24db5b000c53db9000eaf597ab4cbd58147605fe73ee64"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.2.0/_nanopb.xcframework.zip",
      checksum: "82852c583c4ffc0a45c2daf9c9d167f820394aadd231915a29d878f272076a41"
    )
  ]
)
    