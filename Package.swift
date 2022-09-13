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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FBLPromises.xcframework.zip",
      checksum: "d38242a43ca7380cfe570ff4d7989f1bc259e08359755ddcd0fec8d763ddd273"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "a767adb50744249ac6fdd106f5e4802b7cb422366811ea60512fc553610986f5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "81077bece87b46ae327d1e7b94e3220b4ef69cf0364e4676268c7425ee1b987b"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseCore.xcframework.zip",
      checksum: "210dbd53be518ff0327fbbb61f4be239ef279c9069efba32ad3dc89bb8b4519d"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "91981d4a7de3552cd2163370d42943a4f725b156dcca92e9d73d3b98bde5aa9c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "e20577b3b477ee40255374ec7d3bb5c2a87211d888610c5e1ac0a32ae757163a"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "1f12596638965f0fd3e0159c8e01a35c73a13f28e6fbe58ab5a5658cab257c8d"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_FirebaseInstallations.xcframework.zip",
      checksum: "1821652697bb6bb2339c3b6f3fb34a7d17b9e3ada59d6080a3abb6869af4af4e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "edec48cca0097d4c7215c68339bfc87ee928f64be540ebe31d2059f0e9a3ea16"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "4aab966800395516467f9365e786fbfce660444271c45324c34a1ec70828a399"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_GoogleDataTransport.xcframework.zip",
      checksum: "35026b89b5942fe28e17c8a720615e14d2231c7d5897144fd14be931a7cfd986"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_GoogleUtilities.xcframework.zip",
      checksum: "d806832705a0a139347f1f83f1c9e25242982fc4ce52b34320062d05c0f05185"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.6.0/_nanopb.xcframework.zip",
      checksum: "b262a2f99ba1ec3a33c992b8b9cca3cee6f8d5ddba9294d60de8e3be574c3864"
    )
  ]
)
    