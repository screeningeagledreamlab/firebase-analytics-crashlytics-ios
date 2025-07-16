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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FBLPromises.xcframework.zip",
      checksum: "596bd4313c69f5410f189483a7fea3258d854f46f842f9436bc0450f671c64b9"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseABTesting.xcframework.zip",
      checksum: "058c64a8908912433092511011d2c4d65db07aad69bcf9a12f836f6194c8dc89"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "7a136b505b048a0c6fa74e89a531ed2de5a796689af8ecdc6751ceb2e710dfce"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseCore.xcframework.zip",
      checksum: "f37867c731b06a4c42227fdb37bbb2ddcfcd792513607d239ac85a4ac96fff4f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "2e5d7e0701fc774be0fc60e0e1411b303d33527e603ddc58aa5311bd5c477b64"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "20d82a6f30af2124af28fc2d46be628df5ebe886b49c0f0260c97d9cbd910230"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "c7a1ce8d883230005260fd5ae71e6f71f20c743382f2fa8d3f9af93c43ed3e49"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseInstallations.xcframework.zip",
      checksum: "c43fa076708580b2c0b2d3a09d1446a2fd7cbe29fa8387b35172dfe14097d3b3"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "4dfd8d08511b0577c98d6f431a586b174f70556ec1312eddc1d3616d47f31fca"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "c2d2a06e0d644a5e142b186f7537681c2358cdfc91e395d3bfd7349eed920f90"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseSessions.xcframework.zip",
      checksum: "40cfd33bdaafb98f167881f58cf206a9f73293badec0f417528cc38f9a6173bb"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "6e54674be97138600ed8d7373f22c64b88d31c30376e8a6d45ea1676a3725dd7"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "0d6545c3d99a89f7aa7c7da2a5218dda619543c8a45a6c3c45e938a310f47f50"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "d9943e31ecdf089db97651362168f026b91776295cc05de37b0096b5d569508f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "c146b2d44956a008fda9d0bed5bb0080755743d704496786703c72d3e5544ad1"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_GoogleDataTransport.xcframework.zip",
      checksum: "865727d9ac4c848e5010b7d0f510fd6db7e134ae18c42bcd4fe599cc62d80790"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_GoogleUtilities.xcframework.zip",
      checksum: "afeea97a98464d6853222e83d8b40860552805ace4f831eba103ecfad6986ab2"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_Promises.xcframework.zip",
      checksum: "fedbc014cfa046f0baa7bfb84b14f759d3b86f98dde27ae14303f9562c58f41e"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.0.0/_nanopb.xcframework.zip",
      checksum: "634dc0b19fa8faf7ce685dd412c00fa86d5e3bf5e9910c26d32c39e5b799979d"
    )
  ]
)
    