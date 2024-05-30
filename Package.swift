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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FBLPromises.xcframework.zip",
      checksum: "184040d9758e566b50aa0a011124908251a6db92727f11e8ff5db3e0d21ae204"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseABTesting.xcframework.zip",
      checksum: "2c5818f9a38148f794ab5e24888d17ca42ed3b1ddad6111c955af8165e45c319"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "47bc4250af828142bbc54f0b63526c82e85c46b4a9289c2357a650e92603f586"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseCore.xcframework.zip",
      checksum: "73e1bb830355479a88c24b0dda7d6501ca007559ec05fd24b410b4f77fc86055"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "a3c1b0a3859e2925c362d949b248fbbf936d0b55b6c388237ee4d982aee9590c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "2e4c93c5bf11e5193ea2b4c3dcefdab7e1ad9663caaf904633ae8e669ed91311"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "b23ae4777ada9a94104299e4f5d3446ad1ba544a2ec3df6449fa669682d6f869"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseInstallations.xcframework.zip",
      checksum: "46d6089edd7c43b686b37cdc6a9ef67e4732550b15d87e8b019c046db48c5dc8"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "fc1a88da7df1477a3df5d456e4624b116051af1713d0b45fa8b282edd85f1e66"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "4aa417c81fabd6557b1bdcd04a46d98509b9b35fff2a744d51d9d0031e44dd6b"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseSessions.xcframework.zip",
      checksum: "09b3eb221fc2cd8907e7630c99f4aea41367007fdf00a3a6fea3c42a9af1a4b5"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "529cfdeffcc5db51093895508cbe4dd205afe16da6003aaefa905134b6ffadf0"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "b77795e38a41df9f8c6fdc7257e184f51dea5e09928167357bd86488ce376739"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "24e62155e6d5900c92baff40b80228339bae12f3f7d07725333e6958d7d00620"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_GoogleDataTransport.xcframework.zip",
      checksum: "3deb293d000ecdb79a657506da8b228f1f5ebcfbc54c67cf76c87924c146b5db"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_GoogleUtilities.xcframework.zip",
      checksum: "f48e5ad4394e6ec5e4115aa580887a15f158c7e09ff73f4e4dcadb7d65ebfb51"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_Promises.xcframework.zip",
      checksum: "9d85a627a8b8772a40621556ec2083f5726c37199b3f7b3d060975b819ac644e"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.27.0/_nanopb.xcframework.zip",
      checksum: "ff404ace9d00576470a10feb6e4c72521fc0c27ccfc3cb1cde22b900eff6ffc0"
    )
  ]
)
    