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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FBLPromises.xcframework.zip",
      checksum: "1a5c2d372f1e873efd6d56bfba98c96d0147d08bc6d14db5fd128af7df82fe4a"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseABTesting.xcframework.zip",
      checksum: "6ae4faa59cb8db1921eb0d9b735b017275875ddfd7920f67d9e55b2e95844a8d"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "7af27bb134a7d97d117d0459b1d53aa2b8e8e1464f8a73c3196ebfaa3aba191a"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseCore.xcframework.zip",
      checksum: "be2f711b5e93ab3d1e1a8d9cc8808f0774a0b84799eb79c698b8327bce055bf1"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "35c51d6c553bf362bff0b8cc33275fcab4b631ddde1d3d9cc98bfa0f08912eb5"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3a6670133f59be26f74bb75ae4633f2ede25b07d8c6aaed18c880d8091683291"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "3608aff21b491519d62ba6d4229f20cb48728d6204969fdfe5c1c7dfc31af194"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseInstallations.xcframework.zip",
      checksum: "af1b1477c404b86a72a1c5c31cee4cb04d7d1ab991410f3c2bfd9cb11282a336"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "1292f33503aa194aed4876b5238e433e6fcb04a90f4d0598d3357a068444e183"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "ea90ffe8537e190ad1417b5151ec0225c2da07d91e52b1621f693a67bf364e08"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseSessions.xcframework.zip",
      checksum: "de984e48625c456ac0cf5b9fe31c49b92e944750362a7238f9f1384f6a22d7b2"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "7ea6bbdbdb3d4dcdf860990baadf8ea677e1b3a476cfd01b17b3d89936258341"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "4b89eefd4502a5e9d735f010530815b88f565301a2871a4850749fd4950a65e4"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "401c10adaa835c016954cdc8b56ad5d2ec5e06c94c69701fdb1943a4765ce07e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "c83b1c7cca911423a2629dd34cb4708841ba0a19c093565b945c519c6c0e1e81"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_GoogleDataTransport.xcframework.zip",
      checksum: "3db5ff571f3e5fd5fd89d9a2cac707715452efb09fee90041246481f651d19ba"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_GoogleUtilities.xcframework.zip",
      checksum: "6d3a6b071584726b11ff79405f091b9f02fa9b97ababc2648d4f5cb97847f151"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_Promises.xcframework.zip",
      checksum: "cb7aaed274e2b86b5872347db05dd37073c55aa4da5a57e2216058f067296592"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.14.0/_nanopb.xcframework.zip",
      checksum: "e55688f2be6a16638173812fe17af868b04cd26aa938d2850eb69948ba35deef"
    )
  ]
)
    