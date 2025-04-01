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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FBLPromises.xcframework.zip",
      checksum: "4572fcceffce6bf2a8b66d96b2ffdf8e29d1e9df879fcd1c154da032917343ea"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseABTesting.xcframework.zip",
      checksum: "42276c0b49e19e6148f4a356dcdfeb0dbe3d8dd32734eb1c9b67c1e86c286301"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "b71d902dcbcfad18a93cf0667e6d44ba24e8904336b15c5eae3de4eaddcd2eba"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseCore.xcframework.zip",
      checksum: "b3b8087515051a9d75fe21d9aab895fb88078239aecf86bfd04f1f96253f3c1b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "fd394926c2466370ccd96a1dd237b5c2317c1d69cf92d0656fd7293640bb1c4e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "42dbc93deb6cfadae1e1225aab4a6f84764f6f35c71cfe364fe9123949988c26"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "0996ad5c1d8b8c0278d491aee3cf6e0b468302eb1c17966cf10cd213883704c0"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseInstallations.xcframework.zip",
      checksum: "2a135ed756298e7cb9a808be7600b6738e1fe70bf1093fb39c433d81fb016ef7"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "70150bfdf341ce03a371da004a3a7c65e5922f88f8246a3a6bfb4df37c4ec88f"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "9d4fc75830f9b5ae059d376318ee73489bf39947c9ac4b5e7fb93bdf26b48752"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseSessions.xcframework.zip",
      checksum: "39aed610e47ad5a4754014067ef0eb110dc7ad6e2e6b8663afc7cdb0c4d75f23"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "9d2153b67ac84607a5cfe664ab11ba72e7c0a94dbe52d18973f9cee30f83aa2e"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "dbb4f0bde2582c355ffea031cc362609c016c82af10207c34dcc35189d390c46"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "5748aa11276b889e005d707b371c0242e31db801c2b2eb9d717ccbbdc1caac66"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_GoogleDataTransport.xcframework.zip",
      checksum: "1f2d3b5d3ba511bbe60cdb24619746128405e1cbc1bf11c982826f9a387c2d12"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_GoogleUtilities.xcframework.zip",
      checksum: "55b79f024d68116542c9583134cbca28e577cbf9ff70d11656a129c2f0d61eaa"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_Promises.xcframework.zip",
      checksum: "86b01a667313136db1898294105766554cedd8d36a3e4caeca3e3d77a47d948d"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.11.0/_nanopb.xcframework.zip",
      checksum: "877a8cec06bc47f655a7a8ca24e6b93b8b3477628742c9bd164f1f34ee99c161"
    )
  ]
)
    