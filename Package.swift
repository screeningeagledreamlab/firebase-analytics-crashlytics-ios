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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FBLPromises.xcframework.zip",
      checksum: "ffe4c1e7f6e27990e378326ab19547f09389b977c13e5ff78cb5bbdc2e220311"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseABTesting.xcframework.zip",
      checksum: "a09c56170ffb53af20c671c3f291b75b226a3cfafbc916f12ebea1b7d52588cd"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "2f01e920bb5e0a3aa5bea0bf4ae0f9a21c9ca989ee2f89dc8009cdcfa2938027"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseCore.xcframework.zip",
      checksum: "b03124fcce53640ec6b4f4849bf6e3eb3a8169a2d7ab214062fd06f9fb599c74"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "9aeb7caba92daae36641b1ed25879b6d612751db019e3a6c6cc64012c141429d"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "979c916e50074118bec5351d5cc3980217cff02f4b2fa9a093c90be5c0749b9b"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "bd640c92ffd5688241c979febe6575e7bbec4129e0950d70c4199a8cf0a5c551"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseInstallations.xcframework.zip",
      checksum: "7828eff40e331b02843214edb9a3f4849b2db45a7d0f7cc3548ac35dcfd13bde"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "c0157be51b1dd350560ef6b06898d1379a7e9b16cda5bf5faffca1cb22029426"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "596982f718470e408b1c70393c26987a2de3c183fc9f5ab74388bd18454975bb"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseSessions.xcframework.zip",
      checksum: "56986f02d5985e7d0c525843c8e70f29ef2d14fcd06bfa3701c3f31cba41cbcb"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "87b3443e4cb9e05526c78870338655882fdbf0127b6d7376c1edc8e449b6e8eb"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "b4870c2e0a36127a8297342e6271c273909e86cfc05b8a4ba1534d0e643a5e7a"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "4674488fc0ce8d9461b859c5efaf14512d4f8139725ae23bdd87379848fb17ae"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "e6e79e4e55853a4f085fb4605b927ce132106f1ea3488c2f268ddb20ddc7a12e"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_GoogleDataTransport.xcframework.zip",
      checksum: "b9313277cbd506ef47deb77a15166e160f46d12b4e6d3eb051b11187dd7434f7"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_GoogleUtilities.xcframework.zip",
      checksum: "91115b55fc001e6470954d00973cbed20b8257884812a34081b661adbde6ee37"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_nanopb.xcframework.zip",
      checksum: "c9c5777cea831c02600bbc5e41f96ebb97d718223b8536550f6127c6f07fa569"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.15.0/_Promises.xcframework.zip",
      checksum: "4b80284f15bdeed7361471d4c902131e6a222af398470c3a105ab9b2e00e5688"
    )
  ]
)
    