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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "a3d7ce8528a308e2ad8265e1025c76e69bb499792a75db2c51eee77303a5b2f6"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "721095babe3322b02afc156b25f6f3e76d0d386c84530236716e8960a0ea6d88"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseCore.xcframework.zip",
      checksum: "ec5c3ab69ed5730cb1dac32c85a234893c39328b8bf187b973897a70fd37763a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "c322536e9df75fd5eb2c7bf88fe5cf4b72a90e1c649b30d611993c90a203095a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "bc78992b58fb90421f81f647af0923565d167910555201f16930b23c5c16cdc3"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "48d6858fc19daa585e97e1a9ee7665c34e98978cdf778fff8edf307f558351ac"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_FirebaseInstallations.xcframework.zip",
      checksum: "6cf530e51897f296c210e93f4eff18aa6cf422744ca002dbc58b2be2238773a8"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "786064fe62077bfe5c48ddf52e34dd587877d11d64113caa1440f4bd95146fd7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "d8098316b5278425f3e43f61f6c4d87c666f5dc10497b0488d4a215b2cd9531f"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2de8776315a02370be41e60b1d9d73fa69e48fae0418e02b68c19dde939778cb"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_GoogleUtilities.xcframework.zip",
      checksum: "22d37ea558b8ed1b3c599b3a26725b304e9db30644b2e725bd77804d44add09e"
    ),
    .binaryTarget(
      name: "_PromisesObjC",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_PromisesObjC.xcframework.zip",
      checksum: "0c865fac9afabc9ae1509fd265664e91c5deb3fd2b5f80b401b543c878cfb723"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.3.0/_nanopb.xcframework.zip",
      checksum: "32ca6bd305cdb739e85a19d7d9e3972c90cd9389d40393498950a6f36ef3f296"
    )
  ]
)
    