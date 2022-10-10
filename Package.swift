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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FBLPromises.xcframework.zip",
      checksum: "2c840bade85665b95980efdc542933ff300c1ebe6c62ea249ac63562c1334da3"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "397972e3f9f84379e105fb3abeff7d9d5a8ef49f46b9d330af020cda781f501a"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "f4166146f872983bbf0457d2b5704c5681a682b250e717572893f1c7b9a85f31"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseCore.xcframework.zip",
      checksum: "1bb8ac7de6c545c1988291231778c7a197c1966cd2c3b2ea13f14923583e9ccc"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "b4abaa860aeba203c3fa01f55d5ca6f868534382036842a031f4bc77940fc5e1"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "70c8c166497381ac3c140454c198b71060172548254d32d9dfd1995bc48d9ac7"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_FirebaseInstallations.xcframework.zip",
      checksum: "907123c1fe09a9ff46bc83a47028d8b538b7806bfa9ccf555ad3fc660fc41151"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "376eb7792b2a11f25fa46e1d0fab11339d82fd5d0d9c15ef6c01c31f8bdb06b7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "ed00decf3b42fb9427c81ab4c964e6293455985ed31c6530826c87163bce8058"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_GoogleDataTransport.xcframework.zip",
      checksum: "f2da3136325243e38f13fbaffc7e72a5d6566c205dee10ee0672f45de8338f11"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_GoogleUtilities.xcframework.zip",
      checksum: "f72680d24ec1c6c1e83a0a2ba9667ad2de136d951d05af0dc2d2fa377896a07f"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.0.0/_nanopb.xcframework.zip",
      checksum: "500c49a973953536bf50e78735d5f5c7750933ab96310bc0d93d433fdcfd3d58"
    )
  ]
)
    