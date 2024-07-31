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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FBLPromises.xcframework.zip",
      checksum: "6f25ccdaebe5f7f02eaf3f269059245211913e76238db1d89d0fdd5fb17d4a78"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseABTesting.xcframework.zip",
      checksum: "3fe762bb0682c7b83d8ba8a8752d29b8668d152497d5260a700204fbd0f227f7"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "cffb64ae414069ce660c06020281c98f9f53a94b4d88ada675bcd708c6db2bf6"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseCore.xcframework.zip",
      checksum: "a46741e79c6965427e04521dfc60f62c5a3fc8255beac980c2684e23658de91e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e34be637786061cd708ef249169e732a705f95746d9a1da948ef2c551a69cf68"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "f8848c9f405d7304cf4937902e76a53ea96a97ebda12ab96d569088e0f981af1"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "6240ae3b0ee1190e6c1a8dd5e4142bf8b4b1f3cd85a9fc90e50a9e213da70502"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseInstallations.xcframework.zip",
      checksum: "4f29ba9d9afd5cacf661cd686e51b9d45ba816604731ad0caf4e6be794b39171"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "5175abe3fd0d0b374ed3cf35c393cf5c862f8b1845e25146608c43c4e13a16b7"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "93521483a146c5f1ef371f7eda9c945c52d91a334c25ae9e46fa57b974de3f2d"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseSessions.xcframework.zip",
      checksum: "d5c454520ecadd1f7f950cfbd119e5dd76a22322985fa0cbb0c94b91eb24c96d"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "5735a550a2fe9d997b6c6a3da31ed189766151811e76835fdb6268a391b0610a"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "7dc287852b08fdcdb37eba8ad35d75374b3e645d76cebd0d36107d5ac9b892a3"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "33531ffad6fdab4ece1041ef9671f175c3e2bba2f765f4804b1b1b9bd6b9a9e5"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_GoogleDataTransport.xcframework.zip",
      checksum: "61fcfca7bd8c89cfdb69fe7ed91b719b2b24f0a9bcbf42fe670bde0163f4e881"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_GoogleUtilities.xcframework.zip",
      checksum: "3ebf7a2ae2560bdc4d428af6d3b8bb51e0fbcf4c3b3c23e15e80bf6cfd624925"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_Promises.xcframework.zip",
      checksum: "3f0bcf45bd44f2871240e7229b65ea2799898b4fb6ceef481a9bf6a8d443b891"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.0.0/_nanopb.xcframework.zip",
      checksum: "14ba7b16d04f50fb05fc9818d85b4d1b6ab2fdd8b7ecad9b8862919435d84d73"
    )
  ]
)
    