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
    ),
    .library(
      name: "FirebaseRemoteConfig",
      targets: ["FirebaseRemoteConfigTarget"]
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
        "_FirebaseRemoteConfigInterop",
        "_FirebaseSessions",
        "_GoogleDataTransport",
        "_Promises"
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
    .target(
      name: "FirebaseRemoteConfigTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting",
        "_FirebaseRemoteConfig",
        "_FirebaseRemoteConfigInterop",
        "_FirebaseSharedSwift"
      ],
      path: "Sources/FirebaseRemoteConfig"
    ),
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FBLPromises.xcframework.zip",
      checksum: "0b3e13b490c8657f8bb8c288ddd5f37b7f8a4accc1db06902dd5aed6cf4218dc"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseABTesting.xcframework.zip",
      checksum: "45b47f5582327f902fc45b26b1e5385a1fd9010bc7833daa0ac56ce2792b8b2e"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "d773e084a3c8841d8d83c324b994ba5aefd688bcfffb376d576be514459699eb"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCore.xcframework.zip",
      checksum: "5e36153f7e6d750168e48f774bced692fb90e047513a79791579e28e7bf062ad"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "91f7facfb54c8770bfa8d33f7a86ff23810ef327f71e41263e4475310f5f474e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "f74bfef992ad39c60cc0804d916ed788eb86e0c894eb163c61f6a1c0aa5ddc84"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "18ce1aaac697e8f161c3319c906e484687003673d45bbe94b249256114994953"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseInstallations.xcframework.zip",
      checksum: "884132a22b737600c15aec7d85ef6f4727c9f11fab2fc73d2d82ca26ad24b629"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "5c112c80e61e9a74e386dcd42ce28e136c5e04d1284bf7ee7f9fe9535a337118"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "2e5168ce28618113ea2030a120cdc11c3e964289de1ed0002cb21236687a6f71"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseSessions.xcframework.zip",
      checksum: "50b19e524f6318004ab29d9e3c02fc8372628ce39cba513785e6b9809d16ee58"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "821ae088c02fff39228d0bff01c63eed756612f261655e596c397423570e9e21"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "5d26944420db550d725643fe9b7e53392bdbc7289b168ea495e05531178d3f06"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "69541f33f8d5c5d6e04517cb8ec181358487622c66148b117e0c7c061a305487"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleDataTransport.xcframework.zip",
      checksum: "c305cb2518e1cda72d730131e413701d44fdf9e64da5d73b1a81713b001b1cc9"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_GoogleUtilities.xcframework.zip",
      checksum: "d72d80e0fc413d1d805dd50011e5b31b651bc0749ce949de493dc4004623e2fa"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_Promises.xcframework.zip",
      checksum: "70526523693f974256af6ec14c75a140980bcae34cbfabdf18138648719e21a3"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.29.0/_nanopb.xcframework.zip",
      checksum: "52a402b8ea50c10baf69dcabf021aab03ab2b0c70d20ea1e7845156450d51dbd"
    )
  ]
)
    