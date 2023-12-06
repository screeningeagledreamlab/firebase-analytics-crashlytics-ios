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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FBLPromises.xcframework.zip",
      checksum: "0e44aea1861c65019bac547f6b360162d2212d4cfa08faef3e2c513fed567faa"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "914a3347699bc5ef255968e743c3d8d1f183e52f0f2c48063afbffc503fddcaa"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseCore.xcframework.zip",
      checksum: "90ebc0221b4b9a998704fd46461cb4470a6cf0c69c0f60e9be3e6b15784f5799"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "69b6665c068c915256b66c997872c3cfd08b65b3b2fc25f70d6b87b56dc0cb0b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "7cbbbee91d63dedef348de9978e857d526d0d17e869177de8c4b89dae7f671ee"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "0698278e704ff3ae44869d836582e4d7be59bd60190325cc3792c83f49ee924b"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseInstallations.xcframework.zip",
      checksum: "f49f2660749958e98e1be66a1facedd49e06530555b09d9c83e734b0b85abc93"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_FirebaseSessions.xcframework.zip",
      checksum: "732f1f900efa24f38814d9c215d49b972fc016ccacfe3e77a49b62ca92f0b54f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "83e456b48ff1ca2d6379ea4b3d3dbc648e9ea49066da304dd30817c1235b8c5a"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "c417213a6944ead112af536dae9709ad4d96aeb9a08b71aa9e4b91dd8124fda1"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_GoogleDataTransport.xcframework.zip",
      checksum: "c97a3cfc3cae9cf003f9c83ea86bc8dfae9bd35e7efd26983759ebf57d486ed1"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_GoogleUtilities.xcframework.zip",
      checksum: "f115592de3a7784bf6e1bf948303714a1427f9499ae177d000d9518cc30274b9"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_PromisesSwift.xcframework.zip",
      checksum: "89f6b20e61ccbe157b1741eeb89c5eefe301b25cad351feadce750c7619eeaf3"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.19.0/_nanopb.xcframework.zip",
      checksum: "cebcfa89662a9ef3d36289f77a1087af13e731de700111789dcb5d1a2a66509d"
    )
  ]
)
    