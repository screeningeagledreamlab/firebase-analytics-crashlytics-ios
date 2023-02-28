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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FBLPromises.xcframework.zip",
      checksum: "b8caa6e93e657c88e8a98e20315b87573d938d599fa79cc47bd34cc56d14d070"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "111862a3c6e95d0ef9783108e8938cf779f00c9145f21387647699b93c0441b9"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "fc8e100f6703b5b57d29a8663cb38c3188b4954cdfef9385375a99d3f52ba69a"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseCore.xcframework.zip",
      checksum: "f0ab526ae294826efb6122f2ba592ccca940025879b2dd2e0fb6027945afb4e5"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "7639696195585af458c65206fae33fdb8165bae57febaf090fdc683e7a053aee"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "38ffce54d62e71d5800bbae4d53e9409eb3b3da28b7b0cc039ce77f0dc3c5600"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e30fdca496dd6389d9dc790a6ab32cbebca4688b8f89c4a50a8ebb11c6eb948f"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseInstallations.xcframework.zip",
      checksum: "e2ef46c521cddfb9918f5d3a7e4b08673ac9c04d11a742f52fd25d823e281b9f"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_FirebaseSessions.xcframework.zip",
      checksum: "150ad6092f5bb02257fde08bd3371243290a50131c10b9f728765dc07f9db7bb"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "2b358ea29f07e65096a82380b706dfcc7a561ae95608f32229957b352504700a"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "4690061cfc2f3a13abbae8c176888634bd3592fb6edfb97f7062a9e65847ddd5"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_GoogleDataTransport.xcframework.zip",
      checksum: "3f685caabdee9910f389447a6b726732e44879264001bc8d55aefe04e5b87f27"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_GoogleUtilities.xcframework.zip",
      checksum: "5837fa5b64d2a5ccd4f2208bd829f8bfba2ada65454ba581758f34c8779e9762"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_PromisesSwift.xcframework.zip",
      checksum: "c4ffb772390d620e0bef08f8091df9c2c1c05fe6dbac595cc9727d66262c00ed"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.6.0/_nanopb.xcframework.zip",
      checksum: "0c8b05cac154150409bae820a0ba85f449cf30d5a9afeb7800b1cbca4167e32d"
    )
  ]
)
    