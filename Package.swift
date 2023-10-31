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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FBLPromises.xcframework.zip",
      checksum: "6ab5c4315a35f28fd52e2a3032c507fe64199659266e297909715119e6498c2b"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "2071e1cc5b42dd8c6ce1f53807bf2dbc3f587d75c09e5955920a73fe75f0e3d8"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "8a0afa832eef0ece118dbb73446eb58c9f324a9ac19cacac41ff6084d7c1ecca"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseCore.xcframework.zip",
      checksum: "e1a499015152d00f7602e275b4b73f2a3256863040f9ca2378af6ad9021323a7"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "9cd097794c6a6d48e7b9d780ea37225ffa3c0cbb26a85791b9931ec06221f259"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "053cbbc6708d2cb386f7866819ee1ef02a683e6b90efeb48c61250eccc6caa8a"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "30fa78e99237a43a9e826fa0acfe8eb390af0634612deddc2a0cf4f4b4a5366c"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseInstallations.xcframework.zip",
      checksum: "1487add4087f59210b2061526014e646cf369bbd23530244831ac54b35a92447"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_FirebaseSessions.xcframework.zip",
      checksum: "f479bac4d3539b4c7eb78b756b29b9ace52f70ab76447adc0b963be5e5b5d3d8"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "8bced3c70d10b143c2e141572d7e0d2e4d854de0b0b4cc735dee384b8a5d08ef"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "ed265ad52b344bb19cb0725e55b9d21f3f80541086b8fcfca0a799f313a174d7"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_GoogleDataTransport.xcframework.zip",
      checksum: "4bd55691142027ac20161190ee567675af422b9455c17b834e0b94f2389057b1"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_GoogleUtilities.xcframework.zip",
      checksum: "a0d8d4d6c3a2aab9b889c728eb1a2d5a2c0380f5d9954f80bb37a2f668bb90c0"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_PromisesSwift.xcframework.zip",
      checksum: "f856c7929a7074b87c7fd69a16ed7e93d13d7b39c0352badf460209057d86df5"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.17.0/_nanopb.xcframework.zip",
      checksum: "565453a517d05b75239223fd580ccb3f987c25c95df8c861bb4e65ea11645d33"
    )
  ]
)
    