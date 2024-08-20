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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FBLPromises.xcframework.zip",
      checksum: "e334858779ee935a01be248d07e0350ccece05d0978742f6713bfdfa8495d79d"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseABTesting.xcframework.zip",
      checksum: "36723e65c47ae269ed13d18c2f92655133ea58752a6f7eeb4265f1c7861d5c60"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "3e8cc1cc1d3c0f91c940ae4494312fc8289b271f59eeec7e460bcde4fc64e886"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseCore.xcframework.zip",
      checksum: "b8c0cce62640bc4ce77453d60e64e644490fe10fb665973b8dc17d98230435c7"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "30a308d94dc3fba5c15a622d8d4c770659fa4bae43b4c7f450f7b84555f31616"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "56f3b89093ba5121617f2045bcd3bd7ebcb55212038226e714bbff5f9e726f9f"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e897d05353ac237a88a86a93329ae5aabaf60414c30ddef35232c27c88ca68df"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseInstallations.xcframework.zip",
      checksum: "e640122301b9cf744d4c18d076c16bc23bdf5378692e0eec670a3079d34abf38"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "70b7df6202acb94d0fd6cdce3cd14ab6f69e6595532415dbdd570b78989cd84e"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "7ea324752b9dd6447caf109902b6302084379488b1fd4d8705d108c411267b45"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseSessions.xcframework.zip",
      checksum: "743569780f88c8d61f49597228759b794429ea8f5552c77c20579c6426738b71"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "615363527f1111a3d1072c749f000db7a9d5f0100f37ad606ed59ffedfc07220"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "b401b7499d07c164f5b0852a9ed6d05a04b3b0598c0b8e3abd291cc47c8ee1ae"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "3d7a53be97e88fdcdfc202828753dd1c784c3e49251aaa3fc1faae95d469fb32"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_GoogleDataTransport.xcframework.zip",
      checksum: "be04cf8f4abda3d7f5c94777c4fce478e6f016a07b4ffd32a93c040b33ee4632"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_GoogleUtilities.xcframework.zip",
      checksum: "29a546414f456c8416c31579953ad6b25acbedda8de22fd76df7dc25ff3e15f7"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_Promises.xcframework.zip",
      checksum: "c816f6ce75b51457d6e45e1691794f093fe03dc0fdae1d9792c4424768343b81"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.1.0/_nanopb.xcframework.zip",
      checksum: "efbbdf76f3a8a9a7fa7b57954467e34762e404c381877b1792ef420172e261f8"
    )
  ]
)
    