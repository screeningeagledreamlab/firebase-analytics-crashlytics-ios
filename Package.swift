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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FBLPromises.xcframework.zip",
      checksum: "24e32d3dbb800f98d25bcd4fdf7d37e1f8d7742f36ecf2f375f6480d924b87ce"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "3fe3389ed5bf7f61d43a7b57dbce5af32f9e6ea340cf53b76eaf31f879347966"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "e6b440a89eb31fdb3f34b3b67dcbd87e3bae6d44b3bc2c8d79aadd3689e7bfdf"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseCore.xcframework.zip",
      checksum: "ffc20569edee0d537de5778ea6c5646d120298b401cc926b5da1f03b1d07c9ba"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "6acc4179c1822cf553e40f2613b14226c12cfddba7b0e25dd518744413349eec"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "679a7cf5aef53a326969ebb103c1da826f9e930fc9769146c7140dc4a9770f6d"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_FirebaseInstallations.xcframework.zip",
      checksum: "a35caa805d39d441ccea3c22305e65e0b26902ed8157b6a994641a4feb3a43bb"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "6fb897bce2c53cfe8d2b8964997993162e2c0a3f94549f4614f3cecf3d2f7a05"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "b3f7a1fecf38884d73f4af2ee0f4e03efb3081d030d92cca6c6b8e456575a0b6"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_GoogleDataTransport.xcframework.zip",
      checksum: "193ca557b5a15f3783f3bcaeede3af29a809d5226ebeddf7290717da008420e0"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_GoogleUtilities.xcframework.zip",
      checksum: "f9931c13b5f322a9bb9e2e4b584dc098f497de2037c2ebc8ae62ddf0301ac960"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.5.0/_nanopb.xcframework.zip",
      checksum: "b21654bbb61f63de60890011e1dec705bb7f07ef7aebacfa49bb48b6465a96e0"
    )
  ]
)
    