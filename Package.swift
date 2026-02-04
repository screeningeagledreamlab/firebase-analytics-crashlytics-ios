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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FBLPromises.xcframework.zip",
      checksum: "6a28afbfcae92f2a3be8bdcbd79e5959d913918367783081f1b5b0b352df4ae8"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseABTesting.xcframework.zip",
      checksum: "9963602d6862e4fbf8c70a0479438b4d097a93e536e669679fefa808bda4cc1f"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "51a6f5d537954b24f9d6f2bb36f5b8840b8df10eff718d9be7a8acb231aa38aa"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseCore.xcframework.zip",
      checksum: "78805c3889c6de291234dc0c22d6836995296e80a440e662d7e814320bb24169"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "32d367a67dc18d030c8e265aafae33129c0dbc4ab1e3287429b2c732b11f945e"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "11721f4abe9f335c14135626bb35b4f0f46b2e2b151942c05442db75619a4040"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "5cd1af97410bd953b21b38ac5c5cd4eea2d0211c7b86005c346beabc0d809fca"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseInstallations.xcframework.zip",
      checksum: "390a47b365ee1b6f5e8bb31c36b6e5c4d04e6decbcf20caa65fe68a44c4dd89f"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "0df5c6693afe5829dc10328e9524cfe2b176f4b7c3478767328e38b25bff7b04"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "299bf729eb5801bcc143e9ddbb988002fb21b52efc11394fbee8c73054597540"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseSessions.xcframework.zip",
      checksum: "30cd7ca57b878c80e4f5eb5dafa9c85c259c3541a8d53afc119b0929d2dd3e23"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "802c30568876d15c3c9896891f9df1c11f80f06c93e22fdef64da842cdb349de"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "2c85b78bd7b63fb467a40fdd68dedbb1f879daae263be9a98a1ea2ca19fa7bd7"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "aedd24dcf0817776d368271d0238f00c13d00e1983753d900471ec6d99d42bd8"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "9912876cbdd9e47c9eaa75747c117498c9f0995a9e0991d0dc048bfa0e10fd76"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_GoogleDataTransport.xcframework.zip",
      checksum: "b1084ffa1f1eac6576de94666d5d2a7ee282d1fc19df49b84d7efcbedaa801ec"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_GoogleUtilities.xcframework.zip",
      checksum: "9784e9e40f1a7f43373482e23ec4bf896475ab063c82f1027c961a9295455ae9"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_nanopb.xcframework.zip",
      checksum: "d4a8fe20cd336e264b10ab07bc8399fd06e4c37a9442a1a4f065f71d145351b4"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.9.0/_Promises.xcframework.zip",
      checksum: "67085ba109b77cd1dbe38dfecef9ca9be9411aa612b507e016a6e0f194724960"
    )
  ]
)
    