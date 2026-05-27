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
        .target(name: "_GoogleAdsOnDeviceConversion", condition: .when(platforms: [.iOS])),
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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FBLPromises.xcframework.zip",
      checksum: "08d82e01bb21be2addefe54b9d5238fcb80032e6b39ccf16575d747c456324dc"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseABTesting.xcframework.zip",
      checksum: "a550341f63aa85c0c93c54d93f2d8318119c39b825499269a817340d55e45cc7"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "0b6c6368a8baf80500a2b06840cdd1ea06a90a7877329477f8bdcff473d8d533"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseCore.xcframework.zip",
      checksum: "828158fad716e15d1937d789c12b3688565eb1a1fe6ade664748d3ce832f4ad3"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e8349bf745548d87b75fe7877d85e6937a17617b2cc10098d41f1afbf295c578"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "0a1f20da18d9f4b2b6b17a5646cc2ebcf0df58b0922b2f627d202d08114df1e5"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "a20cdf2b80a8874835eed470637dcdf3c5b6faec19aad5c118d1a4affeeb1828"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseInstallations.xcframework.zip",
      checksum: "9035df432fc1fe5c76dd2a12a6ebb0cbda364fc10228e59f8432e77ca3549170"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "2f07f38008df41d5d74a4e4a9ba54958f8ab0ac68883d36d24b2427bd5630328"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "ceb5cae0feeffe7cfd4a48f30aa33645db2304a36f151b5767285f62ee83b93c"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseSessions.xcframework.zip",
      checksum: "65cc4ab142018f86daf4c0b23cba6ce69baf85e88a309fb943e8323aee6784e7"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "0833f1a64ac1f68a34ec734659aac9a70b379b1101480aa0220d7cac9336c83a"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "7517b650021b8527228746a55f7c41c5dfaa8df50db5e1a3bd9aec09246239e2"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "d90d7f1a0f009a88f0b2666a9ec4dc085c3ca56273a5dcc2ae0a19f35f8e351d"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "1a47c205aaff045330082858d2f8cbb1364b5b559a6d1dfbefbe803d4bf2c209"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_GoogleDataTransport.xcframework.zip",
      checksum: "3d78edff2d2a4aa99b2e0c8fe800957306cb78645b97ac649f06ef09d890b811"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_GoogleUtilities.xcframework.zip",
      checksum: "051f0724a3b3e2b83a8dd5ebc44541da7f945d7148f6bd85a2acf633bd2c52bf"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_nanopb.xcframework.zip",
      checksum: "102cfbfc28daea04601dc0bdc3e94c04811832e8658837b0f8e092898b0ca2a4"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.14.0/_Promises.xcframework.zip",
      checksum: "5055267dcfce2f428c377922d75f4adb024f46f7915984001efe9cf2eb2df400"
    )
  ]
)
    