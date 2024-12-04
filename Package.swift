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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FBLPromises.xcframework.zip",
      checksum: "314fc9d31b3d1ab92caa81fd8a4312c6fdda0a1b843152332281a40757badf2f"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseABTesting.xcframework.zip",
      checksum: "32fe297490c2db6d552a8b9e6a0c21260fcb9a7175a1c9d73531096e93284e93"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "6531937c9fac37a0e5d0e27d84995efb3538aa120f21f2c3f248a7fa6bfd205d"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseCore.xcframework.zip",
      checksum: "4ee2d17c14292a346e1f8412e00d5fcd1ec5cde8e38f1845c139f5840908f31a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "0660a1e2bfad8de830e4abb2bf8fd2e22ec04b2746ecde29aaa2fb801ef0299a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "882fa777e83b7be110f59615969916b10c28bf64f9d696689f7beb0621affd0e"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "b2f9d8e546f11b88a17eb7f7da660499d49c3a410400b05f3e376c6c00128f96"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseInstallations.xcframework.zip",
      checksum: "3b6e7915c923d66a7aa923f3123a9a119f76faa8151adda9c37d2d96f4a0bd54"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "11bb199c7a3fbc4d4030e70742bc2c491e447723758b16c6d47cb7c1563bb14b"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "4ff353da856357df8fb2a2a9946c484f7a6b03a120ccdbb5a3f80546da580d2e"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseSessions.xcframework.zip",
      checksum: "f8adf0c479e4d0ba7270a033361b0db73bdb435233673af544a180c238df990b"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "67f5496c2b032abd92a34b5ae9af451d052b057e8e26bc2a84fb8bd01a1cc735"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "5e7e66694bcd1002226275d7f867c8627d71edd210318b504cbf1f2a630948b5"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "c2d52848d860db6a2990034bc5297d840e8f5f47e9c61d2e02dc770932d69cb6"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_GoogleDataTransport.xcframework.zip",
      checksum: "bbed5d4e5a99197f294c54fa859949bad6af99ee7ff36f939477673f72e381f4"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_GoogleUtilities.xcframework.zip",
      checksum: "eca4d4723a40b1a8b2a188f2765ba0ac80426664a0f26c1b1349d1219880080a"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_Promises.xcframework.zip",
      checksum: "472f3ac1cf97e52759ddf412791a9ded3e76e26e9bff1f8bd43853b4e9ece18c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.6.0/_nanopb.xcframework.zip",
      checksum: "4de39c63813851118fb0aec84ead341d57fa4664733657fe2850439e4fc1a925"
    )
  ]
)
    