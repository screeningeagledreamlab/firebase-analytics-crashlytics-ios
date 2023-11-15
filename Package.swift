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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FBLPromises.xcframework.zip",
      checksum: "7d610c8b248584b749818b74632466640627d84fe0505924a48d21cef98cbeb9"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "9edc051f94bf1cf84b43803054a1164e4c92de89cb917803d0f32603784d2bdb"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "04adae04b94765ad2c1562c2d287071d21161c503557ac97c532865fc017d1f3"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseCore.xcframework.zip",
      checksum: "d89f4b0f138c52b6ec5db876ee48caef4f59b89ff812cbe78e69ca000d641668"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "fbb8394e8e3efabbcf68d41d7f1b827854e4cdcdf25454d7483a92be4be9e338"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "88a85ede177f5c67cd2aa2cf57b3dcffb5aabf34dac6ba4f74d093f438021cae"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "8a50bc4d57c61368527a558e61f27196917c6d68886bcf108d9d7354bab60de5"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseInstallations.xcframework.zip",
      checksum: "7ca954d5ad9fbd34b028e2ba0760cd00ea196376fa3f1e9967377c364aae96a6"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_FirebaseSessions.xcframework.zip",
      checksum: "e376f068b8bc91e108c79264d5ab3aedc345e3d3866063941581e7c12d8baea2"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "1f9204f7f68890bc167cdf1cbd84d69860b2318b2803c12ae51bcc624bb48d2b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "a04a0fbc850bd85e7c94d8540f754e56d9d7e855f530356a3d9b3a5221873cb6"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_GoogleDataTransport.xcframework.zip",
      checksum: "9937dfe0eabe9ef2fbe6052bdac1d8a4a6a53ec05b7f1ee92d0b8475206e619f"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_GoogleUtilities.xcframework.zip",
      checksum: "4a694842e6d2286f0f68c6fd89bcd200d20d5d43f6c8d1ed99f5ec9034406931"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_PromisesSwift.xcframework.zip",
      checksum: "9c6f83613e9022de068dbc2e4e140896fee63ea749bf3c4ef4a7f44d19d19e37"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.18.0/_nanopb.xcframework.zip",
      checksum: "fff33e5965a36016cdf9c1239ba427720516476487fec48ff01fdcd6d926762e"
    )
  ]
)
    