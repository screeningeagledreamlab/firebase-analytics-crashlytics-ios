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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FBLPromises.xcframework.zip",
      checksum: "71699445ff30bf1341ef145044d7f4ce335de2a607097a01324bf87d99626fd3"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "e22272c78b9a63a8d013520be483c81a64e57d543ab93d84a0d4fb930b620af4"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "bbe83a8181313e87193b72e5663e7a4f672fce528dc51ca97f1cc3fac50208ac"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseCore.xcframework.zip",
      checksum: "ffb5da04ecda74902c96d2d04a869d69f1180bc5fa3fe4e89da22bcd413762b1"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e6bb8737e55776350d4f0b560d974c6227dfe441cf26319369a807e19a2ec8a8"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "f5091b2fed45a76ec9dfeed727d23d177f12d3895bd6fccc907ec159ad2bce89"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "da3bba7ebe12f3454ba22b94211bd1a6c2db49f5f2d3220a88adb965f01e6ab3"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseInstallations.xcframework.zip",
      checksum: "c0e9cf41c53c49c83d97a32bda962178a0255f034aaf878555158ee5e0067169"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_FirebaseSessions.xcframework.zip",
      checksum: "8d6041169575b69047177961fae81ce62ed1cfd995cb4500a7d28b34ac72d51e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "747e7c4c8fb9e5d259f88ec05fa6a69bdb1d53bc0c8c4b952a0986df135ef25d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "af95e29ee734d8cb7ca3fa107e4c888b9ccab9bcd78fe63ca31cf0729f1b0976"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_GoogleDataTransport.xcframework.zip",
      checksum: "0ce94f7ed8d4ee0b225f1c8df9635b891ca97a0489eb1beca12cda162332e86c"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_GoogleUtilities.xcframework.zip",
      checksum: "35ccb087bb1c1fd99b4b6df34e6d85ce0b1dc6c52db0a79fadd405791ffd4a4e"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_PromisesSwift.xcframework.zip",
      checksum: "4feaee06eeacf11860a0e2bed85553ff55bd95a8bcc87ab2ecf4ddc8d718807e"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.15.0/_nanopb.xcframework.zip",
      checksum: "0919ea90e23fbcf35c5410f715faacd2a4a89eea1ce9623dbd02eb13ded1a328"
    )
  ]
)
    