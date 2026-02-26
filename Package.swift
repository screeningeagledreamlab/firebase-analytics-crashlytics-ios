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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FBLPromises.xcframework.zip",
      checksum: "5e7967077c0ac966e9f0992932fb106c4223382e9fde6602a686fbf34a5e3716"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseABTesting.xcframework.zip",
      checksum: "def2558d868e1dcacef68df21ee18e538b263f55cce4e19a448cd208a274a4b0"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "c2cf522ac4ec1cabb739b24a48896a3ec6575932ff069eae0ef3f414eb1df391"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseCore.xcframework.zip",
      checksum: "2fdbd3aae97612cc097c5e95e5ac84e6121e96cb0a0689675281f7db2be51882"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "ea8a7e295dfd8b9bc0a2831cf6fc03536494801186407780c9da4c50a5d02df1"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "e6773a0b9d1a529a1fafa48425624e727947b60ea05ff6a2ed87557cf41c7cbe"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "65c772decb67835f5aeffcceed4ec07fd0c20a6ad79377cdb382d08040a9d25e"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseInstallations.xcframework.zip",
      checksum: "71610063c698aa917e57a52012ea7f59f2b9feea29c3c4abe0c2542811a21898"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "ca47ca968c72dc1f26180b491d8eb0decef0e919cfa9a0bda6b0d8aa12789410"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "1a94a0dc93374d35426b280b63dfd80c931dd71788cfb91e981e14ae2acb76b8"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseSessions.xcframework.zip",
      checksum: "08ff8d901999c81da9ecfa4fa1ee53f5bed4b1efc05b17a804542f4664d845c1"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "f96df6e91e81d1138bbed2917ea40587473aa1665c97ede6fbac8a3208acad1a"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "44531c07bee6093d93280534d804f78792ee1b597ece9449fd26fbb9a6557be8"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "c3476b9a6263e6501f9bc0325bd378312f1a92e9274f0490e9d905b6b39e3aa2"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "037ca3d14af9c3a79ed7b309ca03c6d3ea3f2602b7d9285b4684b2ab8b2a33d4"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_GoogleDataTransport.xcframework.zip",
      checksum: "e213e0e7778b4bde690871cf9ad40eaf2db1496b88776186ac5f4a9ea8e5683c"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_GoogleUtilities.xcframework.zip",
      checksum: "944c858d032b8e24ea2bb8af8295755f126e21c928837f6ebaf415c4229809b2"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_nanopb.xcframework.zip",
      checksum: "120f6b91645ced2c37281a0b35d73e4c9f0800cf16fad70d6c4811678556647b"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.10.0/_Promises.xcframework.zip",
      checksum: "4380256b19da65509bfa206a07b173469024332533aad71b8b605219df40c051"
    )
  ]
)
    