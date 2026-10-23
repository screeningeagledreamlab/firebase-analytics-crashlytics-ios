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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FBLPromises.xcframework.zip",
      checksum: "dc0d6820fbde2128b7874030b8cd2cdc4ff4bcdda143a1d19e013b47a7c18668"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseABTesting.xcframework.zip",
      checksum: "513668c33d6e7801bdf2e54a499fca756591a8d15384f7de7fe8d019e6cb3d0b"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseAnalytics.xcframework.zip",
      checksum: "c3a6b4718b5925ef47d3faebb5ae1c34f14e2b15cc0ce7084cc62b9d46f5af35"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseCore.xcframework.zip",
      checksum: "ec5c82fa157dceeb7bd1ea714643b5391313b503883b6eb5b94aaca98a1de8f9"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseCoreExtension.xcframework.zip",
      checksum: "379f2cbc478d769f7a9dd2ef6e202f608ba13002668883318bb6b3c144f46489"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseCoreInternal.xcframework.zip",
      checksum: "87f9f590e2dd375af71c2ab8efd0acca947a31adb0eb93bc07f4d5f0e61754cf"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e5fb96606081b0ae4137adf85e924f8e3fe1ae12397af07d860344e7389d97ac"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseInstallations.xcframework.zip",
      checksum: "8020d6d6845ed6e474b759fa80f8ea709f42a57b407b3629284cfbf40243c182"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "bbaf97044642eb24e15bee8973cc5ac494d958bd7076a9e17db91bac6cc68dd0"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "b2f259d3ad6f950662f62da0ec2bff6ece132e598cf5e22143694a8fc178bd35"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseSessions.xcframework.zip",
      checksum: "7d71271ed6795527d3980d59faa85206d9ee09c4c915a328e2ce853050d04e4a"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_FirebaseSharedSwift.xcframework.zip",
      checksum: "f9450918608b9ef63d6fce201539ad3d7519fabc6503ab7984e8f67c4f57a79a"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "942034a316495d767694bffe60fbbe745169165c3f33ee30d40b13de8906ed97"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_GoogleAppMeasurement.xcframework.zip",
      checksum: "faffcc0433258a8fb9f03ed8841718a222b022571998704b183ad5c7a8ed3641"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "39b90376769a4ed2e716f8a8db8c964ce6c717109dc23eb90fd4e04317b1c303"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_GoogleDataTransport.xcframework.zip",
      checksum: "cd9e77faf0e4b953ca24f1b9d1ab367c4db04b291416365c005c443a73b7bd25"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_GoogleUtilities.xcframework.zip",
      checksum: "ae65ff603d81234e80ce97ced5713b0377794fdcbff06842dd22f650c736bb01"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.19.3/_nanopb.xcframework.zip",
      checksum: "8662285fd80651f07a3cf0cb93bfeebc4bb5ba5607f12b0f086246eef90a4496"
    )
  ]
)
    