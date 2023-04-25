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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FBLPromises.xcframework.zip",
      checksum: "50424209e5d5500ef1cc6a5d8637f50d45094f71e318dbbdace26bb0ae25ef96"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "739e8c2431c13239e742eea1599af25a35cdd8281ae67716cf5939cd75be1290"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "9af8dea7fbae4459fc3821281d3046f705924c52e42bb28e4422d7411ec0dd16"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseCore.xcframework.zip",
      checksum: "4a096953c4e14f882d3cdc89f1e2340b8f071af1b57822fa12dc897853d24c08"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "b0a3917c88e3ef8a9c98df8f0e555f2a0691a963c48b62dcec3463b8ff3fe77f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3d52c72462c25d14b8c98d47ea13b4b816661245c64160525d4797dbfaa7405e"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "c526a5be9b4226145f76d97541ec351b128486c6501589f3516f925f79f93b6a"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseInstallations.xcframework.zip",
      checksum: "0471b0ecf25c5558a213aa3eb69c95ac18d7fbcae5fb63e48b46ccad0929edd5"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_FirebaseSessions.xcframework.zip",
      checksum: "94a97219ac054f16535d41eaec0bc5de1c3646ee00876628c8fe0a608f1d7c6c"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "e15d565c52e168cefc007d9e3fb2133c49701201a7904ab4ca3ebd9dc795e000"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "a3258458129c37f67198c06634aa2755404a77ebaf4061431a90f65c4ebe825c"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_GoogleDataTransport.xcframework.zip",
      checksum: "f2975ce78561a85ca8265323ffa402762681b0c9d3acdbff9e806859fbe5f828"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_GoogleUtilities.xcframework.zip",
      checksum: "5fcb18348535e684c675f13fa683f40eb56aba23bcd9380686908c597ff168cb"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_PromisesSwift.xcframework.zip",
      checksum: "b7e833ce26d1413acfd3889f319c6a10c8da0708da844655f2dfabf7931935eb"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.8.0/_nanopb.xcframework.zip",
      checksum: "0f89536843bc2843dd08db4ccab60b8d1ac0faf061dca06b2088b4865aa30ef9"
    )
  ]
)
    