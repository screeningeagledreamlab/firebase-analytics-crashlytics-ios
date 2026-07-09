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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FBLPromises.xcframework.zip",
      checksum: "235f7c8b712c880b3c57a602a5b949f2d52997dd0e526ab040704ad54a93ea9f"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseABTesting.xcframework.zip",
      checksum: "095a3543f2865b8aea731268f268f5bc30e07da6f093eb34a5a27d14530eab4e"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "569febffe4fecce1b6b6f26f028a38984e587e6f8ef9652696170aa070c704b7"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseCore.xcframework.zip",
      checksum: "f6ed9ceee00623e06d381391d6dc347544d9a4541727e57763c52a7d1cc0ba5f"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "c6cef33833d96ac6167bf3784f08fbe142bf351d1f239a07182f91716777e39a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "0fbaf1f4c8c2026fb0cc62c4b980489003182570281435b48aecc6e035bb8098"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "72279f471a97477ad7f3b103af5940126882662edce98f0cb493707bf2d91553"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseInstallations.xcframework.zip",
      checksum: "acedfcc17d11a2d1f4b73741b1d1a0a7d3fe436e332447e35fe70804bbab994b"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "2044e1b318339d16b78688755826b42f88f438174ffde81030c150eb776c3184"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "df4fa9ab2cb8cf0283689f77b802c4f3083b178148f77ca3586d0f4e59c71607"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseSessions.xcframework.zip",
      checksum: "b2dc6aa01273d9dbc172697d836dd7e3fd64fdc8111f784279ffa734a62f1375"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "9605b4faab9b330481298cb4dcfc9e4d390f1e4b331c27ccd8bfc5d8a7e79c96"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "31a5a1f5204f4844a480d3889b6ebe2e69473ef32b868935c51812c0483cb08b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "60a425e54943347f8db98f4a8d98c3fdf76cc97b455f1d5ba5ee9205087a10ea"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "e596b0e142be1fe9dace1387af70891969857402016c41730758e903fe18fa18"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_GoogleDataTransport.xcframework.zip",
      checksum: "e0a5a689187edb3ac5e6e05d75cb0ba6fcf61a0725cbaa02ec50119b3de67d79"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_GoogleUtilities.xcframework.zip",
      checksum: "302a2b63a29d55cfecca0873f39e3869064be51ae631ab4143ef112ecb510f4c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_nanopb.xcframework.zip",
      checksum: "5250a340770083a8031c6e60e8190e65f23968dee3b5dad9a1367e7893d41180"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.16.0/_Promises.xcframework.zip",
      checksum: "537ec46f3a731d8eedc2a5ee3335a868c3a9c6c27913ae0059ae3ecd4da7e2ae"
    )
  ]
)
    