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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FBLPromises.xcframework.zip",
      checksum: "2e0b3d71ce7f6c9c389d8710f8ff92b97e5a803632dd64946169f9166191d54d"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseABTesting.xcframework.zip",
      checksum: "2ee4fcc638a4934bad8a5c040bae5ed5ad7831fd010ea4df753c435c996b3381"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "65bd09da31008bc3b801e7d7bcb961670c096a959a2029acf9b2f3b7e07a4228"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseCore.xcframework.zip",
      checksum: "c7c6b6733b5be4bbfb46750bd262314decab169c7754976e4409c760b61ad6ea"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "816bf42903edf90c68e9dc7aad752c355020838391bc2840655e2cf1dd4d198a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "a2fc1e1d6614276cf891c367092966de10281d2414ac701ead8bc3ca03a3e3f6"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "5c575212ad5e9e82e9a59a2b4f1f25a7cf689ec20613d656dee0861fbce22906"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseInstallations.xcframework.zip",
      checksum: "a7532ec7388824dd8635167990367d2c26e47e17db56d09940b977608aed821e"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "06366c9e63d220aaa1dd18c775071120165d3d5d2b8b7f23c2b3253eb19e8e6f"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "18d9eb682250b5bf7d16d15153122a9d732ec9c16ecede342dd2e4a6068fa42b"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseSessions.xcframework.zip",
      checksum: "e3aa2ee515b1e0a38fe90d272caac87c4b4d09e9c0fc2cbd9e55e504f9307b09"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "e42ccf969dd9b9446dc9e1e3a051fa94e746ddded5084166a177d9764dd82b8f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "9a14b1c5d2f2c4fe3a7aec3be277393826b71f4c1ef815f421b86687f1cc5c2b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "080bc9289b121ab0fd7a778140dc253aa4b7095a1e01ac5d75af8de668f5a511"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_GoogleDataTransport.xcframework.zip",
      checksum: "0c4112c01d5e206d3132ac9d564258850ab2eeb34a0a8c23114a61a29c3c4bea"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_GoogleUtilities.xcframework.zip",
      checksum: "1db52576d737dd00ac2f322b74fab39688f72ef9c5701b4c26ae1140af82f0dc"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_Promises.xcframework.zip",
      checksum: "da032ebffa7e8d3d97942e892dac6a1ed99220e97e54e00adedf86e4f6d41cd5"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.9.0/_nanopb.xcframework.zip",
      checksum: "5a2f6cb2420bbda895092e62d2a210e324a597cb4aa7b3f8f0d14c79a33911fe"
    )
  ]
)
    