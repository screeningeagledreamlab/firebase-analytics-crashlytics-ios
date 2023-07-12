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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FBLPromises.xcframework.zip",
      checksum: "44bb861009af7e71f7ca281e25bb913d39adbdd4a4946272effb5f328c1a20a6"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "6114747b9089570df852fc3cf8a17eaa9c393ec4f2d57194145be43d0a16c446"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "a79be79df41fa730cb062a962d956d4d1362c3493986fe262dafe51f6ec10369"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseCore.xcframework.zip",
      checksum: "03f8bcb814391d70fe75f06ace3e1819db997c1ce4de17b5a9b118be30320a0c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "ca3305b162188da4dafd84b1c94cbbc637c5336da6362593051b616b84ddd9e8"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "cb8f10a15787bd20422d19b6a640b296bb3355abfb2d1073e3f03f1a9c8fa2f5"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "5c95cdb21dc900a3365805a32b1000d5d3af38a37fb7aac0b6c10cd9e03e39c3"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseInstallations.xcframework.zip",
      checksum: "1e90cbbbf6e32d196310f13e70ab4945dadb680caaf71133b8910e5aafaa2bed"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_FirebaseSessions.xcframework.zip",
      checksum: "12a59d682fa9843c1f39755e6ebaac6c571515cce68aa989d8355430a2611158"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "2fa9f715dec88157b2088b9a4004fb8a503e7140f50cc1d9523d0c7e5edd9c86"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "7afb85c1cc5711b97f5910445c6aaa8f1c19e4b2860f5be9863057c3f0d1a32f"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_GoogleDataTransport.xcframework.zip",
      checksum: "13592abb567deb2a05059ac669a185672417277fb092bdfe422b44a2d2922de1"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_GoogleUtilities.xcframework.zip",
      checksum: "64a19dded3be520683f330613d76071f05ca51cf0f19d363a4cfd697eab7a0e3"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_PromisesSwift.xcframework.zip",
      checksum: "e9633f0cbd39949f0fd3af0e83935660b3dbf7d30601c840917b56117852bb91"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.12.0/_nanopb.xcframework.zip",
      checksum: "09639d49aa0693b76f8ed2ace32d0ffb2e74c70370f1c821296fff7ef7b544fe"
    )
  ]
)
    