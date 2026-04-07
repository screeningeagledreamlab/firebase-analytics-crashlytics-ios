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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FBLPromises.xcframework.zip",
      checksum: "b07edd76e89798d1352a711544442ba05281a6df6e8765ad0755d0a8e11b0a94"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseABTesting.xcframework.zip",
      checksum: "f42f423d4f443e7f98218c86084765af0460af20319930e898e7f39f09896805"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "d7fc07f3675d45be2a721135d834c8540e492003e58839e2f161adabdb8da22f"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseCore.xcframework.zip",
      checksum: "33c12c09bb16613e5abbae89eafb3ae1d5c888e3a0568abeb606908c8dd087be"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "4864559fa9a3545f64b3345ee62f1d9aab87031e5a5406a5f0eeef9e9e2de843"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "34703b4e4fe906b7e58e8d020068aa8b0cb781cfcf4a66c8ebc0b28954b1100b"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "3a995a947bde73abfb45a6679ae0c25369ff869b56fdf21d6a6ccd9f0b74d2ee"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseInstallations.xcframework.zip",
      checksum: "be7e4ab257f62ab04f9a9779ba7bfdfe837ef5b57eac505a91ec0f9397de3458"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "c5090b752dcf6276a2e68fd23402e2944cb42a6c8910808b6e9d9fd8aefe1712"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "3e0bb1566a9ecb1d26e2e13799c1977f6fa7148d1e2f85e9e4472c0fea57d03d"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseSessions.xcframework.zip",
      checksum: "00950ea5c0594ceb2774d6b1373898bd19880ee8fdfd1398495aaea254bf89dc"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "dccf5cb7d1574fabdc07afd19475f8adf82ad3b6611bec441b560d22439fca00"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "f3dbd35df576b8622526730c54faa6f554f0c3911df12eebefac5c719977d350"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "bce9f752bd876adc2af468400be84e6b294aa806306a076df4585483c623e506"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "787bfc642534ca86e0010789c6792569b43c5ea925b37a819853273f4b12e9f5"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_GoogleDataTransport.xcframework.zip",
      checksum: "33598f249c859ff19191347c932cf0ebd0406cf09d4efaa176bfd32b89109f4c"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_GoogleUtilities.xcframework.zip",
      checksum: "b41b6ba938db1a5c377a298a98e24e1e95553fcbe187fb41a99e1f24c5e14ad2"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_nanopb.xcframework.zip",
      checksum: "df88120560dd56b89cd8ac134b06c9fc62b90cbca65fb24feaa3541c6eecbf52"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.12.0/_Promises.xcframework.zip",
      checksum: "bcd9196e38cb72fd455d433c187ce298de117158de7ded15de7f0a42fe036bec"
    )
  ]
)
    