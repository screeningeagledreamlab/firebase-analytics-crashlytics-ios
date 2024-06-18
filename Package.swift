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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FBLPromises.xcframework.zip",
      checksum: "8817993474921fa9d562cfbe6cc1ed9f50ddadc9a0c43e693268e748634f7194"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseABTesting.xcframework.zip",
      checksum: "e666b430cce65b6c453cb976956973f2d1286737fa9e77598d94e88f8525303f"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "2666ba8da0b71d22dc75696ee6b41fcb6b1f6e0c7950cfbc73039ea5aa48bce3"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseCore.xcframework.zip",
      checksum: "5242b2ac23822f2a37b7019be1e4f2a41643f5f1be3aed5e301203f39199a761"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "0777d67eafec9b007be6912e36c7cb5754b567fd79313813bc80d7770e590db3"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "1984c7f2777760101fbb6d1eb9cc9c8920bc45bfe55da60cb69c6c514e94b3d0"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "81d07ba7caf7ca4b2ea0c5d9050801d5717b62e60156502a8a51765788957b6e"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseInstallations.xcframework.zip",
      checksum: "d509116211b92d9b000fef24c836530e0ddac3f80954d8751964e65b558cef3b"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "3a7d799f0ddd9326df2a71032f953e038da8016b229a757898b9bad54edadc71"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "d0b2cfe2af9b4cb351db176154349da9c1af350cfee4b491209e25ed72af1663"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseSessions.xcframework.zip",
      checksum: "36f34f338b732b594b6b78a051945aa4febe21b28655e7d1e48a2e34de8e18da"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "35f12902290ee11913a048dc313ede6774767cf1874f829eb5f0a4f3ccda9e11"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "cfb0d9c53c98949bf6047e7c4251c701eba489dacc9bbf3f59d86a70af2594a9"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "2c2aaf49c80eb927b49b79c033f599476fbdc0d8dd814b956c02dbfff90da8be"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_GoogleDataTransport.xcframework.zip",
      checksum: "767bdf2ab8fad7d14e8cf4639f6e2dd5259c72482a3d29666d887161258fa170"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_GoogleUtilities.xcframework.zip",
      checksum: "b1b2d28a176baeb1f37197ff778f6ae084854ce3ffaafd437d36eb8e67311361"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_Promises.xcframework.zip",
      checksum: "4173a522af25c23c83c9f93623815dd6fee67ffa2fd68b334ef58247e31b744b"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.28.0/_nanopb.xcframework.zip",
      checksum: "65f77b9f85d8db62e66ff81b9cb20b698bce0e7620922472e9e1e6a9a00791d7"
    )
  ]
)
    