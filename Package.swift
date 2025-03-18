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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FBLPromises.xcframework.zip",
      checksum: "2d23c7265651713970c04357c31d29f142444766aba36dee614635d5571297a2"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseABTesting.xcframework.zip",
      checksum: "f0de03b2e959f6e1b704387297e7d7c89501e813ca935fcfa1d7ddd2677e024c"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "f74c366eae88728361400c5fb85cc5020caabec73ab457382859e7b75ee81ca6"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseCore.xcframework.zip",
      checksum: "7efaf52000d1f47b82f41acfd4de8adf1d6df5291f27f368b94b4d5fd6d3fbac"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "2dc2453f387455a494bf9acdb2d047c3bf88476d7c4df083fad2e46b34825bce"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3163cfdc6bb757b01d0b6083a5e6fb144c539343ba951f4ed20f9742efe439cd"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "04e78a04c5f806fcca3066a3c3fecf92114e7416737002b6edf169abaf1a6d4a"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseInstallations.xcframework.zip",
      checksum: "46d46a1a42ee2f1dee4495e88630e5bca8edecdf9c968a7a5db683dce1fb1b1e"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "c4645efa69bf16c7cbe34635a1cbbf95eb8cf9f981a6bec648b7622aee3a8cce"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "4caf5dccaeb1be71a5fddf714e0bd084bf8fa3ace118f2864ca971d5530e7fa8"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseSessions.xcframework.zip",
      checksum: "be24bd9ffb105ce0bc44cc1c967777aebf666cb117e3ecfb07746cdb714daaa6"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "329eb64e065a9e37b4e6c3f9242f3a81ccb8d277da1037767044a3a30f19fe8d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "8c7fafa63272f5fc3af48ab5a1d66fc5c6b23b918606908f908c6db99c51561f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "283e45cac2f03ff262541d40692b538e6e76567be1436be9574e84686f760e03"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_GoogleDataTransport.xcframework.zip",
      checksum: "47f1dfc1a552b37784ce88fc9cc156dc0d16a8c795d32060b36e78219c520619"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_GoogleUtilities.xcframework.zip",
      checksum: "24fddf6e5cb8635f9f573055b50697692f08c748db79d4b5e0ee6ec97c563df8"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_Promises.xcframework.zip",
      checksum: "09825c8ef0b5955a4ec6bff67b2a9076c28cd1a4749e63cc1f03764e1cdcc432"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.10.0/_nanopb.xcframework.zip",
      checksum: "c188fdda77cbb2f6f0481d48b3000a3e37a406e9185fa285e867525f1a189ebd"
    )
  ]
)
    