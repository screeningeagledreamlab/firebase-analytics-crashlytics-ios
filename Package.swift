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
        "_FirebaseCrashlytics",
        "_GoogleDataTransport"
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
        "_FirebaseAnalyticsSwift",
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FBLPromises.xcframework.zip",
      checksum: "9eeb94adef5c55ae473a3800770e9686e04d779d7d779dc4160cb21d60f81180"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "7687f10e3bdc0054ef9dc42826617aab572a086052d4eb9d3f8cba88290cbf32"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "0d9146d3f3d9b32453d586b75ea5620e69bcd62e98fc5f5accf12ce21ce9d494"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseCore.xcframework.zip",
      checksum: "0f2f35003d3075f0155f3c5951334e4baf26c002f5c21f0443ebba5bf295a8c0"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "36c65ed09336d05171c9ac2f57218a8afbd1ee4546c05102e30cdfd13fcf5d27"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "3d6dfc78887e47ce73c9a17a8d356c5d6619fa4b7f5381c4f75af693795c3268"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_FirebaseInstallations.xcframework.zip",
      checksum: "848abb6f1f78fce6fd6e9d668429c616cb461df3890adbbbdde4449b57374e1c"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "66f40dbe47395c8eccbd3801cfbeab50fadf6421c1dd9fba6c1f74ce12d62cb3"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "76586d324a788a4ee6e5d19186cc99fc3109ca74ab7928a15e511f725cc62795"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_GoogleDataTransport.xcframework.zip",
      checksum: "46d17805bb2dc3783169cafefcbb86dc0bb636f2f98a5e1164495f5011a43f2b"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_GoogleUtilities.xcframework.zip",
      checksum: "2ede4b862b95955d8480970bc9c32d01b393c8db25fdca2b1343ab203cea5bc6"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.1.0/_nanopb.xcframework.zip",
      checksum: "78a808502b46e99bd8ff41af2b8b2944b5ee40dc6508aa513779c86bae428268"
    )
  ]
)
    