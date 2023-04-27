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
        "_PromisesSwift"
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FBLPromises.xcframework.zip",
      checksum: "09bc47c138f9c2d68620706577788ae260eacbf49930d7adfa4fb139aa8ecef1"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "cebd66a145ee83fb5d57edf36a846f0c388c1a2395c04517c6c075d3defa10a7"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "ea3f857fc3da8db2bb7cbcb7fbeb939a75cb2d015d4c80710951ce0e4cc761c0"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseCore.xcframework.zip",
      checksum: "bf640157d1f2f0ffa6499eb89e4b9e9a1404a5bb1f1434e81eb6aebeb5efdc2f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "f063e832a3795c6ba0de60cc5f25a0346fd54454092a3b7761590ba83ae1a97d"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3db9b2837db37e5c5f624c5afd67dfd94d3648185a3669680c7dfdd0e49dfe9c"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "fe7c8faf786fed6fea2d6b82ff2cbeb2796b8b66b384bb02a507f3a7ad429f23"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseInstallations.xcframework.zip",
      checksum: "9a93002784e20bf3666a311d34a842484d4ab70f4d2e7003ac9f79b3234bd0db"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_FirebaseSessions.xcframework.zip",
      checksum: "2cc610af0cd84815552914970b4fd2309ce3fe774f1b7f5180c17a64bd3cba80"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "91b51c9e377417b5aadd729c0995a04b52de8e05a8233331e7a87eb8fcbf4512"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "64de88edebbe221843061f6c1fc9516949a48fd1d5617dcd358ff22fe179a5e9"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_GoogleDataTransport.xcframework.zip",
      checksum: "e3df043b0b5b4292c6f22b786ac134b9b03251082d46f509587cb80fa0d95d50"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_GoogleUtilities.xcframework.zip",
      checksum: "81d689ef25d64476b685d8c4ac28c989d07b2298a0de2e1eb447fcfa8bac575f"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_PromisesSwift.xcframework.zip",
      checksum: "8b219f5c619b7c68d326c7fa3ff994cd011a48b09c4b8dbf992dfdd9b5851004"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/0.0.0/_nanopb.xcframework.zip",
      checksum: "2918a86db808995e4402ecca9e48aead0730cb2fc9006052e4869ecddb4a5583"
    )
  ]
)
    