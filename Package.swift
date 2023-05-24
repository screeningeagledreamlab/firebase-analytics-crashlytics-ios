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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FBLPromises.xcframework.zip",
      checksum: "f5810e18a6efa77327ccadd892387fcbacba239b65e6f8052e0d29434a66ceef"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "12822f437a2d0c4fff978c6926c9d8bf7c42f4ddedbded68db474b509a546d07"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "161a4b13f75b74ae813b0c1195710ac040e1dbdd2d31f32b901657926aabed0c"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseCore.xcframework.zip",
      checksum: "b567b25122fd4bcfd9848b6ac9f5f3ae36e1515678f218418ef94335d100d56c"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "7b7e926255370fe19a7de761ae4b06ddb71851b80bd831e5a440422702c85786"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "856892c3f4219431a56dae60a6dc0f35e39abe2890ccd7eb136792f9361afd96"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "5f317ab41f201d38b16c4fdf81511edaa14cc413c37173bddbb77d06861f5060"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseInstallations.xcframework.zip",
      checksum: "19e17834d63deb168d884e2620e9df3cb22b6b88b57b594dae4983cad70c5775"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_FirebaseSessions.xcframework.zip",
      checksum: "2d23ea2ff12cd7810670cf4ea8f71a6e03c6d87ba295347334c2b3f70e89d845"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "ef48ca8c20ef9e349e0a96c2ae17dadb8fb0be785ae20c0081a47f54790c032d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "51379bd72a1034179e08b12fc2bae9e901b68f64aa594100afec3defddd4b0b4"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_GoogleDataTransport.xcframework.zip",
      checksum: "91e6b92b025089a7e04378772867744a6c0e8ad436959f9ef5e3d1d9cac92ad3"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_GoogleUtilities.xcframework.zip",
      checksum: "a7a840b78e1a07b98253108dfbf07cc3622c4eb4b7b71d13905b68cfe2caec00"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_PromisesSwift.xcframework.zip",
      checksum: "2ad9e90a51476255ba4f99e0bb24692dab4c41419256b31ce57582c0363c19bd"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.10.0/_nanopb.xcframework.zip",
      checksum: "21bb5bf6a957e8fe0705b86f60544dddcf2cc517a488ffa9ee7bfc2e93a224e4"
    )
  ]
)
    