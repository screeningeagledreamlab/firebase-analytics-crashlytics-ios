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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FBLPromises.xcframework.zip",
      checksum: "79e97cc12bc26b918ee5acdeddb1649baa453ca63c73d36facbb963f7d29f778"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseABTesting.xcframework.zip",
      checksum: "4f440afb4cb40792c549796c0dc43b1172c3d244179caa8c72477d4b28435185"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "f3074281ae5b4a3bc9c15d446086891497e57c95a9c833535ddff5175f6eeac3"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseCore.xcframework.zip",
      checksum: "31c2c2659353724cf70ddcff615688b6014787392be290a3e457bed1083d43aa"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "49dc16e74b86ca66647bd7c553d91db97f74e795b7d64c380683281e769117dd"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "12bcbd7daf7f38fffadef9d2a7a093bb3091efbb31eddbbac4d1c21b671286cf"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e0ff652c697a056e96e33748b87c20453e29bac55e014da078f09c8f3c8268a6"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseInstallations.xcframework.zip",
      checksum: "e619b77fed9d23106bbb30ce11bf352b563e01dcad0a27536ad660ad075eba43"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "a03d900eb66ced5abd54fccf2a81329282fec863a2f225d776e75d653bdb7884"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "021fefce48e3e46e5daabc9c5481cb5dbd2cac87ec4cf7de4314611ceb7caf88"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseSessions.xcframework.zip",
      checksum: "a8587c9f53d2c1aa03ab991fcbe6d1c7e77b59cef1efb2ad746ae5cebb8d973f"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "4e06bbde6f77fbf64c261639baac299aa0eed10692f736e1463dc1e93c4773f3"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "9435b71da9d1f8cb75c93698c6717642d1a03c150842e60904ecde46735d71d1"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "5ba93e4ba2536af2044fab1d3a7e89c06f4747dbfc6b747811c4bbc849659570"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "3a691cf05b2e89dcb4bbed4842054ae2b2a34aa3c12fa85d2bb49a754d1aaa65"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_GoogleDataTransport.xcframework.zip",
      checksum: "35111f5a71ce78d6915144c3349b80bab5aa35b56464459144d4c6b6fedecacc"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_GoogleUtilities.xcframework.zip",
      checksum: "227cb5d02526b52e891427c4fc12674b22174f31dabfd7d5d41e987cdcf827f3"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_nanopb.xcframework.zip",
      checksum: "fc7eeff4dd2ddb66860142a9ee88764b0ed3eb69ff6913b0fc7e62a4c1a8c019"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.8.0/_Promises.xcframework.zip",
      checksum: "d08d74c23abb3abd07dbf7d0078e3bdcc3d897dceacbd5a3ed4f6828aae7a185"
    )
  ]
)
    