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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FBLPromises.xcframework.zip",
      checksum: "b369c3c79d9a27367365e1022558e18741424df3ce92924fa26b4d1ddea22282"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "ff3f0c50e0919df4ff16a1d439531626314b4af93b910f0ca48cfafc2829ab6d"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "e624b4fa83598e176633de6f2ee2942e4310a0f908c9628c1038022aa5d51798"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseCore.xcframework.zip",
      checksum: "750fea427672f5550812cfd6895f5abb76ac232a86234d5eecda280525e9e74a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "633ca0e1bd4b8c4b430158e73f8cf41c1f12bc5b62509774ffa8996e24d67017"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "fb6fe5eca16dc4df16d31c25313f0d5b3369e959b86b1e013f03b61ffecd6d86"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_FirebaseInstallations.xcframework.zip",
      checksum: "d35c1bd357481260e406fef362ea6688243e70fc610a2e3e6413515717f301d0"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "eea13f800f617115bf54f11c2f085a6aad8387f13beb50e63f0b4b0d97149676"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "1195ca062597304252b121a5bbbeb0735570a1477307a28b52ca147adda074cf"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_GoogleDataTransport.xcframework.zip",
      checksum: "458f2497737115d396814ef81b7a0778618276b593a142f3e7ac6f4d2438143c"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_GoogleUtilities.xcframework.zip",
      checksum: "d174382ab5d790b49776b128c37ddc317fae450562416fc2e5cde07c0a8ec7af"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.4.0/_nanopb.xcframework.zip",
      checksum: "eee619ee5d62c9328d59c9173cac4be285c3d73fcd2800d4612446c0538994d6"
    )
  ]
)
    