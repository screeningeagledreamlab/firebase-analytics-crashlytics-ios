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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FBLPromises.xcframework.zip",
      checksum: "c9ae3a0ef80de803bcf388679a888c9a5e0581948a96d24bcd358abc4a502ed6"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseABTesting.xcframework.zip",
      checksum: "95bb3a01393322eb097790b6083298c28dd0a6503078d226cf3b13c163539637"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "105d7f64786b3ec500d8c55398383a3989518830d0997348d85f850886fab776"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseCore.xcframework.zip",
      checksum: "95a9016612a72c6f59f7715dc11138aab4bf4f4e07eff333a0780c69b61ef5a2"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "a6a081641b286ae8de5030ae076bf7770a61578f51cf75535aba5f590218f6de"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "cc0230789c0aa5293a72c3909e64b8719ca885d4d7d7853b7549cb40804ca601"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "8564d5cf3072e32c863076d37d1c3c0ac8672e5f43a3f7b6cdbd1fc6305e1bf7"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseInstallations.xcframework.zip",
      checksum: "dfadb85656b99c8545d4a9a88914efb1bb96ac8e0a565fe717dedebb38361267"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "3d97242905178c33725eb44ac4c973e8bf6d3c4324dd31a732eecbfacf3b92a5"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "ef88558972d6b1b5fad2ebb49515fbe8614eb42963263d1c7a6c64b70cb9fc02"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseSessions.xcframework.zip",
      checksum: "eeb9491535d7bb25f47c3913333397861987a91d978a20f1aa39d8748887dd32"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "15ade17ec2919fc94a6804ca0a02cded90e1c1ff20be0feeaf538813ff8b43a7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "ac2213cc119593ddb43754c70449e3125367552be7913effe42e76adfcfa99b0"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "524e9771dad3b63bb94d34e942306f95a5e4db18d753cc6cb6aa131f16955d04"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_GoogleDataTransport.xcframework.zip",
      checksum: "d86eb45171348c06d0b4f96367329b0ecf5844b51477c6879db4c44b4f1f305f"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_GoogleUtilities.xcframework.zip",
      checksum: "54c2481c48cb3c1f9bb869cfb3896b6b4cbdc022ee120d9467f67b4a95b41630"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_Promises.xcframework.zip",
      checksum: "34f7d331def989be5f66f218a226d2d694a6b979019800ecf29e3449d0937dfe"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.5.0/_nanopb.xcframework.zip",
      checksum: "6ec94b43a63695ecaadbb01a07e228c152ed54071c05bbb367b2fb485fb8e69c"
    )
  ]
)
    