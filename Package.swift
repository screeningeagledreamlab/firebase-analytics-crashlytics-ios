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
        "_FirebaseCrashlytics"
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
        "_FirebaseAnalytics",
        "_FirebaseAnalyticsSwift",
        "_FirebaseCore",
        "_FirebaseCoreDiagnostics",
        "_FirebaseCoreInternal",
        "_FirebaseInstallations",
        "_GoogleAppMeasurement",
        "_GoogleAppMeasurementIdentitySupport",
        "_GoogleDataTransport",
        "_GoogleUtilities",
        "_PromisesObjC",
        "_nanopb"
      ],
      path: "Sources/FirebaseAnalytics"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseAnalytics.xcframework.zip",
      checksum: "58f22c78a0c211109d7a83f52c40413d1d74c05d43efa6baaf58a5edeff12851"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "704490ee5726b364d06db2ef28df430895ab846ec71b812cc4abf6e2467e7742"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseCore.xcframework.zip",
      checksum: "e338cf529a034aab82bbe9bdc819beb512617db0a00cf6d642b046ab32d9fdfa"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "1fe03ee9f5a04879d78db8082ae23d7de578d95a839ecbee9806c58d0ec77e88"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseCoreInternal.xcframework.zip",
      checksum: "3b3753ee4c62bf5b41e924f60ccab807ecf30645aa40de9106dcab38fab8f8a3"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseCrashlytics.xcframework.zip",
      checksum: "c3245934886d58ac73b0621f2378fd8a8c39752392ea26c01a9c5faed6cc1b3c"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_FirebaseInstallations.xcframework.zip",
      checksum: "3b9d9bff1c7f2b2f3f17ae1a316fada3dbaede1aec3ee0e5ca5129b54daabb37"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_GoogleAppMeasurement.xcframework.zip",
      checksum: "5105ac97969a9371bebc6703aa66b4c553634df516c023660acf08645243113b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "061171ce869f54de81e18e9b1d67dc6a752d5fb5729dbe081d99f98326e625d9"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_GoogleDataTransport.xcframework.zip",
      checksum: "e8f64770318cd0a7bfbd339fc6950c0ac822c372f85680b8e26f4380f3b10be0"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_GoogleUtilities.xcframework.zip",
      checksum: "a7bec7404d06c220cacc27682bd3f2fe627028bb9a0ddd26f3ded902848d49ef"
    ),
    .binaryTarget(
      name: "_PromisesObjC",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_PromisesObjC.xcframework.zip",
      checksum: "c23381e2d50ae223ad28833e0dfefb1871a867bf91729f4707ab16a3680d95fb"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/9.4.1/_nanopb.xcframework.zip",
      checksum: "0e5dd8e954cacd3e74a9bbbba9572fa402bab951e1acd8d6e140b3a5f11d3b47"
    )
  ]
)
    