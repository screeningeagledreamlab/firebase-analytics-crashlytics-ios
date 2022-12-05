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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FBLPromises.xcframework.zip",
      checksum: "96680a0c94f059497f16b0c8207335e951924e4ef00af3ad64d130239cbcd28b"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "387d2ed4e276f8a0143ed0ce28c4f417b553397ebf54850bc001e6f2e0ccbfcb"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "56759ecdfd72a5b8cf083905fa47816cb788f788567a6626e66e232c4130007e"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseCore.xcframework.zip",
      checksum: "3594f008deaeb075351d3f2d6443ce9c1c097268da6277f7a7a177276c028f37"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "efc5dd337dccb3fa4f9cd28a3074d153169b89ed26b6d4db6838a0f120f9e069"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "8ea03c775a926f96fef9cdacd6043b62c304c5e74c76bb69488c2bb313d1cb69"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_FirebaseInstallations.xcframework.zip",
      checksum: "0bde321aa04d5d59d6bc88a8bef5424c108685acb89fa6bdabe82b94998947cc"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "db7dd96f96752c42e10f9baa57234e0f6238930736678e4623b642273d2e18ce"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "3687b4394b1757abd3987817728ae4f482301e6d6b17ccf249088d7fd85cf8be"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_GoogleDataTransport.xcframework.zip",
      checksum: "ad6c840db55ddfc6dba485df7e3ca98090469389cf1df5eb0698f75446b54e8b"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_GoogleUtilities.xcframework.zip",
      checksum: "334e9838fd4d773565a5f64019cdb1fec8be8064944fb285be1c546504531ff2"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.3.0/_nanopb.xcframework.zip",
      checksum: "845ac101d4e30d6497836c6c593901097be8bc17129b1ca1f1616450c10ba1d7"
    )
  ]
)
    