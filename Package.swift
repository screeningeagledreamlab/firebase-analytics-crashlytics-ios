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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FBLPromises.xcframework.zip",
      checksum: "53091d0dff085e8966b7b6fdd688c36fa94da19dea145d2263ae2db402619425"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseABTesting.xcframework.zip",
      checksum: "0c56363c161db7678cc91094d2c6fb256aa7dbdf0ed08b390af0dd389e547cd3"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "67e3a94fa59d204f0a2a146b46dc2a4de508bc0f3f177b460384f9717c0fac07"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseCore.xcframework.zip",
      checksum: "1786cc018bd8b53de38a3496d837b86e010ccdbbb9537a2bd15fd72cdc33d306"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "fac3e827aa33cc3c2c6e4ebc2bad3c2627840372b92bb21c64431d2ec803326a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "46d29e6b5cfb265c898d4a5ca471e91803edd93ef9a6e12465b2c0c3f15987ca"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "6a8a2f4b84f19ec3233dfac6d744950fa3ab0bfe2646ef320220e3be74277c49"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseInstallations.xcframework.zip",
      checksum: "17c7983eec88faa5091b9054808b3808ffdafae1c2a4b553d54b3b914dd43e99"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "956566cd76642f2d48e8859e9a9cfd3adb21cd578481c39dfc81d198e52692cc"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "a4bab3b6ecdb769c2fc4e8d4cd9a9d27705bb423de382c5cf5015823685b44c1"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseSessions.xcframework.zip",
      checksum: "24e0e09849f3d89eb09f7fe771d145d361d3ff505de67c511ef5b905fecbae0e"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "aa2c9bc6cd6f36afa6b0936ea47c74666edf8ecf24ae080f86aa9c2aaecdb518"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "b0cc504bc82c2495a6f0c6056c5ca030d8aa8abaf5c572e74d7b973b73def93a"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "c492f433e70d53e8b2c3df569b2b079cdc801f5e90a226f6b61f048d520972f8"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_GoogleDataTransport.xcframework.zip",
      checksum: "86fe8b8f599d1dda6da491cfcfd458da3d237d3ae366e8016f7cf8185fee0a80"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_GoogleUtilities.xcframework.zip",
      checksum: "af37f4ae8cf30e3dd7039b4e9e4a787a56e4f4aeed932ba65e4fbf040bc7007a"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_Promises.xcframework.zip",
      checksum: "44e8d36fdc64e2165960689396554a41c953299645c367a00deb055c9087e9ba"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.12.0/_nanopb.xcframework.zip",
      checksum: "3bfb92864ff4ba9d89c7234e7dcaefaef56ced7f904bc5a158dbebea557433c5"
    )
  ]
)
    