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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FBLPromises.xcframework.zip",
      checksum: "2b4b2dfc11ec0959174e10924c6d4c98610390763e6185524f043ff0613896cf"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseABTesting.xcframework.zip",
      checksum: "a973ce9c5f87f4423cfa26806b73c9682edcc53cb6df914afc7e36b8a7726114"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "e39098cf80a6f15dd79041526e9a683cd1e85a311431f602e33f673f9a9d80e8"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseCore.xcframework.zip",
      checksum: "b346da8b9bed733b31779b7cbcd691e5b40beff3a0e98a699fc454ec976ecb1c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "a88e8474281cab55e39901bddaba83048feb2080d6632dd824051ffd5884c9f5"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "47fbb60f63605c5b4fb9c7451f9c9ea109875e7eb71444e35b81333ac7900cb9"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e0f37169ae1b9f17b62060226bcdbd00a586450d1906dda93579aca67c53f794"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseInstallations.xcframework.zip",
      checksum: "8dd008c6d604359d6de8e006bfd31cc45fbc8a919d6a9195200d4a650f24c9ee"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "d1d67e3cd8cd8ee4212dad2a1ec81714db05341b1a7b4d5e061d21dd2ba7eb90"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "119574701b20d101dabe0e8f9acad8efdebf39bfda95610cdc3cef4efffe18f6"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseSessions.xcframework.zip",
      checksum: "7010d3582d4c19da6d863d58ca07eaacd01dac7655238eaf42d27670e4800bac"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "18f9b50c2da3b2f6bee76bba587434270d5fc30eb30a68fe6f62fd3ef5ea2a53"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "af4d56b25ef7f4d91c7cd77161ea21432479987a37299d9d874462c25ea3c6be"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "0f84aeebb81a8552186f748e52a15812fdb56e8b9bbd27f909552557e9a4cc54"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "a32a7e27be4985cd80fbcca9cdcb82380efe005dffe07cf9376d568cecab1fc3"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_GoogleDataTransport.xcframework.zip",
      checksum: "58adb68f4dac0db543dedb9c7b4486e9c091f20dbd2b4fe052742dcbe14cead6"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_GoogleUtilities.xcframework.zip",
      checksum: "f8990f80995eb0f3e1395dd939a63f78e24dfc423c59f653c664bc8fca5fd096"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_nanopb.xcframework.zip",
      checksum: "25ddfc99d0d0b319f4749fc89a53b27d4d5f704aa716e08e723cb9baba7422ec"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.7.0/_Promises.xcframework.zip",
      checksum: "50ac3e79a294b92e0569d2cd19f5feb69809cb10f7d8c35cbe95ea2d2cb807dd"
    )
  ]
)
    