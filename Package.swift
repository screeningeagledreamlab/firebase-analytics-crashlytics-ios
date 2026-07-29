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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FBLPromises.xcframework.zip",
      checksum: "81c2f8dc90b85df2cd0ea292f273114f207e9401ab909f8d613057f41afaf0b9"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseABTesting.xcframework.zip",
      checksum: "8023bdb4ac9c657c2c1e3e437cc981c6d10fccb5ab8b0e4c72313839cb6b9fba"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "920af66d20cf42a4882edd000095a4a78f3f3e5e80382cda94695350dd44c522"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseCore.xcframework.zip",
      checksum: "13b69c79c8581c465508e9c05b9e43cd87be79a1e0c882197de69713536100db"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "8b37b091ec2e388f3dd8d6ec255aad161746e230fe435796a3e99a2e59485b77"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "121410e6e7f0945ced1333ff63636f1a7f62b4d7d3dd59f9a54281651638893e"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "711526e38a225cfa970c9c3f087d502628dc7194192709c6da9046a876fe8544"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseInstallations.xcframework.zip",
      checksum: "a0194c07bed6facb29bb917b99ad33f9d6e8f9f17e27b7952883810c1a5087b1"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "e9a909b5adca2899ed5fb4ea126962dfe44085ccbdb27eb5eb407f240fdca9ab"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "b13e213dccac135d9316d7fb6a11b306b8c5c607ef5fbd072a45418e21da0552"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseSessions.xcframework.zip",
      checksum: "4e30664a213dfbda97497a3767f88022e313a944849cef8484b2bd77d292ab42"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "e7239d0f9b437dda07768de830d2ccd500701b893ec95013ff70e928b3d4c498"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "0f088b8a085e62a38b016e33f04d000511deb0e6a0b15ada507cd73512593582"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "19d2b9f8c65a02e625fa3463b763c6dce471b1bb6c8f482b35fc596da9390393"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "66c660d1ddd7a8bcda122b35fcde692f9ec1df496b4fd3e5b635b358dc45d7fa"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_GoogleDataTransport.xcframework.zip",
      checksum: "443ef3431bbc243edc128cecbd4a55c205d142004f8d2b350e9776606adff142"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_GoogleUtilities.xcframework.zip",
      checksum: "dc8b5d8e7d191206208f4286aeedc4398ae167d243a6ea138c528e74236c3ebb"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_nanopb.xcframework.zip",
      checksum: "6c2b5c2d82a865acaabd0c23b454fe747cdf453e239734c1d06ef9fd39fb1a4f"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.17.0/_Promises.xcframework.zip",
      checksum: "13b5f4d1fee789da71de5f55d0aaf94179f2a8989ac50118b21f5eecd5c13e47"
    )
  ]
)
    