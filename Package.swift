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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FBLPromises.xcframework.zip",
      checksum: "e51450f0febdd4f7fa154724fd741678b1c04e20f7123bc779004122bc42085a"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseABTesting.xcframework.zip",
      checksum: "9b326ec0138ae661c4edf43d64bcf82159d8c978afd126810b503f88dd7ad2b8"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "3494fc03035ba9f0b63a3f99c61cca4dc258b23ef23cd6f0d75f5b1db797c3b5"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseCore.xcframework.zip",
      checksum: "f41778aa19c59475b5a7cae61419a7b582e8cc0aecdbfa769ca34dda402a9ee2"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "beefab0489457e1f06cb17484b7c719c0684b82981a5ae6c8f71bafb4089fde0"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4dfc841fe6d99d3b8e73a9ec02256de81c98535dd272beec2a27326492389ecf"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "6a5e099399f1ade58189c137120f95c6cd070c7fad512998676352da1eee2921"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseInstallations.xcframework.zip",
      checksum: "dc5318250fd4f7fa368f64cc5ce67577e9b04aa8ec9d68432e61c7f09c30af80"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "98cd28f4fe9a7a288b7b1714ab46f1b818f2c13129ab4f35c6befc805f69bb74"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "71d1ccd617189ef22db30d038debfbd8f8e9fd7e5ab438c3737d5323d91a804c"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseSessions.xcframework.zip",
      checksum: "e8065a68755ca8ed4a577db1180c50352296c3a32d1af6d6834aca4ff99b9a20"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "cabb39545bfe581e6925561bc7171e0a6d1382684a454576d6591849dd6558d0"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "712ff0fa01c5aa32389858fd56f04b270311317c1332712e3fa14be2e09dbe76"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "a5021fc2f4da9cf27def556c4e827fa7247cd94c317b179c667c8de95293021e"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2414dc4d8be5371ec8ce6f60d76e6b76a5e3adde6a2561e73b2b44e66ef1ce40"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_GoogleUtilities.xcframework.zip",
      checksum: "2456d289d251396de421942dd3d4999e3a8e77a7f985a410856a087ffcc681da"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_Promises.xcframework.zip",
      checksum: "cc2ca16f6739d1a04a249f1f527c787241ebc9274f751c5e1fba121440069252"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.13.0/_nanopb.xcframework.zip",
      checksum: "b99596cbc331a78dc7d38210f3ffcf2308748fd246bb36e34544b069130ea7d7"
    )
  ]
)
    