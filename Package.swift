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
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FBLPromises.xcframework.zip",
      checksum: "89a72681c090a7011740d28fdadd821c02a54676968a1a254f65277b9edb61ff"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "d7f2796bcb91afe6a83a27aab84283c731e8520d04b250828dc39f3453b5c443"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseCore.xcframework.zip",
      checksum: "ebdef593e95b0e4811a11b2f097cc8390aa273d9d4d52cc6ef86ce3d8adbd5aa"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e716c5ddab34777fa3d327b87f73fffed0b1f5b54ad1e31cecd77a23cf8c8294"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3b938bc6658f1288551458f3f018ea601f0b7ee1c26bb9b96a3d04a79a8bccd6"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "ac24f9adbe00b44d1f91eeb386293995713086fc240604c0f30dac90dc5ebe4e"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseInstallations.xcframework.zip",
      checksum: "8a7f7ae54508dff5c669d45f7d9449547c35c2c7248e5dd75c5e2918d9ddc682"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_FirebaseSessions.xcframework.zip",
      checksum: "4a975597436feca7adf6b50c0019b267235dea5647114fdfb3b08d40dc61cbda"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "d5a8e51f1b120216aadf6ddc99e971519bf70f105aadbadc137fe317fd43c56b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "34b56f95bb610e5edd3ef4b9451f8440a8bd0a0ccf731e26fdb65a64f7b35435"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_GoogleDataTransport.xcframework.zip",
      checksum: "41b00ac87e37dbaec52a5ffd79b974349828a742e8e9b178c84f1d2866737011"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_GoogleUtilities.xcframework.zip",
      checksum: "aa90083cf20fca45fd077a901ff478106530e4b2bbe7db461c6e46a6f073fe3d"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_Promises.xcframework.zip",
      checksum: "1623c68a1b2c006a8d3d6e2e9e676612e0122b7d3ffbf3c21e0fee984b8b6e7b"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.22.0/_nanopb.xcframework.zip",
      checksum: "323be94289d253bbcab7a4a55482301b4d086f8c3551282ea2e0e21db2cdac52"
    )
  ]
)
    