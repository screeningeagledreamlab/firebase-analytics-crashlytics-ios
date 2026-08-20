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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FBLPromises.xcframework.zip",
      checksum: "4523e8ed839ba2dc305ff0b26c1c5e18d6f5762f4deb7e3e9d6d923933e51a2a"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseABTesting.xcframework.zip",
      checksum: "108dd9287dbcb53278cbf8d419de12671f40b08475b96451d6ac8a2d59ba850a"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "8d429d101ed28fa021322d65e9dad17200bfe1d4ba2fb6fa20624068ebbd1c6d"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseCore.xcframework.zip",
      checksum: "954033162c04b26c70cbc2dd6e745185362692a9ff4ae76fdf56e30783b38769"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "955532a4333a47cde4869533d45929962d28d963f1a1d779459b15579d4332f3"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "9acf30313a8173c67148920d74cb6bc0b593c08f3cafe0fdcf5ce58d476ba6a7"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "c24279d51f3508708f6b8820d2404a1213b7f61dd1c49760db4ec86b2db5e5cd"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseInstallations.xcframework.zip",
      checksum: "6dba115c460d7975ba6d63dde66a7d6a70890747a65bb1092bc6754eabcb7219"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "c899d2b29a75f38b9a87e83380efc52f4bfde72c43012d74c7cab479e343687f"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "60636fa09af94705a6e7150cfaedf17b5b7c63599f23abe47191b2398f534be9"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseSessions.xcframework.zip",
      checksum: "6da4d93e321c0d2b4e87c7efd1eefbda0214671bc4361503105abd4376566761"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "140c60aed239c7f1982aa5183fcc4765c902bc71b8dd24504a829b51d870dc95"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "f32b2f063de63e50cc4ed360a56c223d75bdd64b38309450c77b254d74370315"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "50d62d79ff2b267f53121df6a88972509f6fe005090013d28e8d4b2c3fc62297"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "465e284094c75246ab0cd07d96a69f0b56fb76964ece1877acf2e5975f54b534"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_GoogleDataTransport.xcframework.zip",
      checksum: "bb25824184d4969554b10c749a54a07369ca8c5014f1171176e74d0c746cdbc5"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_GoogleUtilities.xcframework.zip",
      checksum: "110685ded2ebc1fb6b1e60e436753635d03136c5ec384a253e8553eb45711f2c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_nanopb.xcframework.zip",
      checksum: "bd94ff7780ad11bfc0281ee07f99398f83523533f219a5611676b69b9eb48efe"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.18.0/_Promises.xcframework.zip",
      checksum: "284f0c0bff1e9fc39e236124bbd4507ef3e2ba25e6da4862bf1c2c87999fe448"
    )
  ]
)
    