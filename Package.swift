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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FBLPromises.xcframework.zip",
      checksum: "fceb440dab806fdbddb6a73d951005aad318083385a3952a8135c06d3dc923b3"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseABTesting.xcframework.zip",
      checksum: "a528ea57fba75a239a6885cab8c7ef14989ec8a43f5ec0196e63eb6acc380bd5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "098828d48ee250b1860a7a42157f5639edf06305c22f3a29e225766835582f91"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseCore.xcframework.zip",
      checksum: "2f3efe187e3f2ccc82eea07a88995329f9652bfedea86b9081c0180d241d239b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e488807ce7ae99934f1503024660edae50ec6a7f4f133d4e76f937cd8e69a890"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "e94d69c7591a3285752a7de3c316ace08bdcb2be105102d991ce33d99d3db097"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "9c5150d8dd2da8a6efb4a06b3eb21095f68cfc4cfeba90db916eec0730c884d5"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseInstallations.xcframework.zip",
      checksum: "99dd455c4d5b3e10f71ae8ec5f123c9f2e85cb0d8e0b626c314469eaa7d9f20b"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "bd9d0b02127c4ea8277f2f89ca4351db9d3852fe40be43f35ad03ab6401f6e8f"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "5fb1113a9925725c40e36c858c14f43d3af2faca1a67f1c056969f306b770491"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseSessions.xcframework.zip",
      checksum: "6889f898bab4aeeffee7f82e9fa48b084c6bf5fe85d2c543411edca209aa1658"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "12debdc277f5c98137a7876aafb7ec306a99531a43fc4603142b1d70fb1c8779"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "479b159050517302140736a135a38458d49e8c27b777064b0a3cbab07f4c63fa"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "8b6c6469db21182090ec2a10a2595552cbfbf0225ddb91c0c5209291f6196360"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "48b994a478dbc30f990b434263cd0cb20cab83e161236fe09dc77a910677d20a"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_GoogleDataTransport.xcframework.zip",
      checksum: "030e2679fb7bcec29ab632fd18219840bdd00b3c91e8ac3fe9cef9f43a3df3b4"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_GoogleUtilities.xcframework.zip",
      checksum: "fb6b48a97a113739bc7d00f96676e68e95afc8589a49935c7c9dd0f5266dcc89"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_Promises.xcframework.zip",
      checksum: "8158927477113c87467d33e6f43981d52247c72b8dc13049c0a4b527ba5fa6a6"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.1.0/_nanopb.xcframework.zip",
      checksum: "20d08c44fd7ab391fed3cf67059cac29f9d0deec048609bc371029d28d50ac20"
    )
  ]
)
    