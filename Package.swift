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
        .target(name: "_GoogleAdsOnDeviceConversion", condition: .when(platforms: [.iOS])),
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FBLPromises.xcframework.zip",
      checksum: "5c6c58811dbe63c71e7a10304ce0651624f094ba0969e7ed7a4caa14c6d4d5ba"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseABTesting.xcframework.zip",
      checksum: "fd5d3988218890de4ac6366a702f92d66e2b58a3669822d30b4d80d1a042aa14"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "060305fe41e538cc1d7c78933df8ff0e8d34f1f4047b86e9e6983bf42d512719"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseCore.xcframework.zip",
      checksum: "703044724ad83d5888c41176dabb3a6c1d38f4fffae965747b95fd7260001e7b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "bb0ae5546a1adfd7e68caa6029cb69006a8197c1f8077323112db6ad8bef54fe"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "a1657fb4ff3649beb3ef418b13f21d1ad7613afb1599375c530c44898fd28e6f"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "8e5c1a5a793d30ae0618fc20646b430804f49dffc877facd3a60adcc3834094f"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseInstallations.xcframework.zip",
      checksum: "33d0433dce99898f0803166668374f768dc16d3c83f5f247afaaa747917075e4"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "40e170606ab4ae3179173088df46f1d34337cad07d617aad21dad8e0d0ba1b35"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "70830d17dd3b025063a24368765e9372bf655748b83eede9095dc324e4540c91"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseSessions.xcframework.zip",
      checksum: "2c41be6d85ee37c8600344573abb5412f0bafa44e8ea3bc97fa97b90185152ff"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "f09fb60b2f90db1ffee4238741931dfa69fe42598162040ae73fc12a94a61db2"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "33275af8a3e201a4dc11e5414191d0fb09c451cbe9a0e287a1e2abec4a84ae55"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "b72caffd1c09c09a9d57f0032651f5b7396f0f3802ea731f5c82251bf83159ca"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "fa893747948d670d40ca8cd8ab6c81f8d8279a67af6a4abd42ce4eb716f973ca"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_GoogleDataTransport.xcframework.zip",
      checksum: "576a4eef7038eaa676444d78253dfd7f2f213b7db2280565f699bcc915ea9105"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_GoogleUtilities.xcframework.zip",
      checksum: "d778aa984d6e968fc645c44a4d38b829126a44a257d2f1ccaff91a6e08c72f9c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_nanopb.xcframework.zip",
      checksum: "473cb4c967b8b6fc73628b117a86d0a75c645cb04058071ddbec0277210d0232"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.11.0/_Promises.xcframework.zip",
      checksum: "e6b7744e079b66e0dcbcdf87ecbeb0fb3eef33e8ef7b8bfb2d1f0f2cb3b71159"
    )
  ]
)
    