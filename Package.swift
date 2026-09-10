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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FBLPromises.xcframework.zip",
      checksum: "5f03b40b2da99fd2ac35e2783ccd771ed73594f7cf3cd7ed07e3eb350e30c4cc"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseABTesting.xcframework.zip",
      checksum: "d86ddb4b3c3d775277a53806f36e01f5aeb912905532688193e54048ebc1b2c1"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseAnalytics.xcframework.zip",
      checksum: "b63d20ed6c8556d544b286cacd964299c448c879f073c1ccc39c0c8b0ec21724"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseCore.xcframework.zip",
      checksum: "d8f07658b39361c8d51c22905756993b796869fe4a27c4f8ff246204a2295f1a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseCoreExtension.xcframework.zip",
      checksum: "5031b0eab782ec43208d5b9d06a83b925a98e98e0d2f9eaa872a390780e7123e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseCoreInternal.xcframework.zip",
      checksum: "c949952b09b23948bc37cf2bd514e214e71cf6b513ba72c7f69f8ad7cccf00a6"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseCrashlytics.xcframework.zip",
      checksum: "7fda8c9ae8e5556d368c238427ddc11417c14296262d6beae5decc97117f6517"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseInstallations.xcframework.zip",
      checksum: "f98311b549e0f8d045c0cd0aa2b64ec70ca82a6be89384493c6aa678e066f984"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "99c864c60568f8981f4320c145e23cc06af9c273d4adcef6d692e03a36cec575"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "20ab77daa591b746e788860c3625ab4a5573c20781e399a27fed820c586ab2eb"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseSessions.xcframework.zip",
      checksum: "5f47f95d44afeb0ab88a11ce80a80899f7261cb28bd562f3244290a92316dc0d"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_FirebaseSharedSwift.xcframework.zip",
      checksum: "2d29cd481def462e016257ea2160d19081e15bc2ae660e4657658363c0fd8b9b"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "53f5409b716b436cf0b3e01ac09d92160fe853a06786ab7aeb6f97906095492e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_GoogleAppMeasurement.xcframework.zip",
      checksum: "2e3c7a2de71f5b21f0e8910e2fea746dcc057110108e8521c16b7c680789fa9f"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "2494efed35512e5d1c1ff99e48c478c559b751bc948f5f719dce9a5fa75c547a"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_GoogleDataTransport.xcframework.zip",
      checksum: "439272c239efd5758455450bf55606411cebbb7713170d130d4aa05a787854f2"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_GoogleUtilities.xcframework.zip",
      checksum: "ba2527e11862a979a8804cada188fa21923ce551f5458f6a93a7e329a2491fda"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_nanopb.xcframework.zip",
      checksum: "41108ad24a930d75a3e6af69652715f90cd797f71f9f8eafd2795caf91740d24"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.1/_Promises.xcframework.zip",
      checksum: "b2aff6e5e0a489d13b26719dcd9dbf0fd4b66176df9d6456cf5ebb2130e3a270"
    )
  ]
)
    