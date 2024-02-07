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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FBLPromises.xcframework.zip",
      checksum: "be755a0b84261af09d34895ee9dda4a12484fb30c3f889b9cc2d6d3ed664c1c5"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "52e23c950bd2203294d2868f5f2529cdeca57b573ba171de86625ebf3439270c"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseCore.xcframework.zip",
      checksum: "e79af0994c963a8c1a57487ed0257a9ba669e721f3a8b5dc9747b0e6df896493"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "b4b091a8a933cf5a99314e16c6c8b35c981469d275b82b0c986a2fcc1ee39171"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4f3d2ca3181acc41f4750b19292d320d06e21edf64c2514d252d06af22a13c13"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "2df1a095ba919bc4ce937c7e877cc9ad50cc5f4d395ad3c6ebd662f937cd7de6"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseInstallations.xcframework.zip",
      checksum: "bd0960c4608df80e04fe585fc849deab65eb127ed4361f030b578053298ca468"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_FirebaseSessions.xcframework.zip",
      checksum: "c8b9193174da31d3891f34a0d557560d469588adc139009553b7ce1ce60b8fea"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "ece0efbfa817ad1a92958c4c777ccd850cfe7275b00777021796a9e1ab168196"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "f26be5b077de1a71f55a3fb05d914d990d4eac424f071991123bf21e080f7185"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_GoogleDataTransport.xcframework.zip",
      checksum: "9471f88dce83c1946fd19a6e986e1c2d753c1d83c5487f8594bde7926796f7fb"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_GoogleUtilities.xcframework.zip",
      checksum: "995f9d6437f48d4d98053429c2391ed1e2c6e95ca1c9914e03cde66f95453835"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_PromisesSwift.xcframework.zip",
      checksum: "c3e246ce34c9a0b28194e53bc74e47fbc770353d9c0055132e263a600b4bae90"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.21.0/_nanopb.xcframework.zip",
      checksum: "2f4880c15a812f6c42cd3a23f9dba2d18c4badc73c52456d3f3db1ac1f95c27c"
    )
  ]
)
    