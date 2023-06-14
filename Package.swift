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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FBLPromises.xcframework.zip",
      checksum: "91a845c3071ac7c614e9042f72e247c4c2f0e2fc46c23e6712e1ddb3fffd9f9a"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "a4294ae0a627f96729a9ec41ee7d31961d5d1c45756f8a5cb414df83f54ba3ed"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "eb54abbc77211dccaae3c001aea0d9f162fdbffdd4f999d41951b3c72faff9b8"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseCore.xcframework.zip",
      checksum: "2cbc610a619ef6ebe758492728ee885b59b4f33b208f3eff0b0ae663f8373ca9"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "ba0e9165479626671205860b62b607a0f0c0c578dd0d64fc2830738eb69b3c0a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4cb192d1f665111f479f1de2fd1324d762ecc7dc9263366f12a1378d16fedab9"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "16ad7e33bba9e50ab7309f3b11a5c11d2110f52ca29c91b3c61018441c525c32"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseInstallations.xcframework.zip",
      checksum: "da48b17c5c1b7dfbb0e281cead9b56e473b515a471288dc20ab1209f36781803"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_FirebaseSessions.xcframework.zip",
      checksum: "bd280e8a34b366c7048459be012469b725884bd230f5424771dc639829be9052"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "52f35c3e9d1d51c431ba63eb73b6025c085ab6939bb4a3f41566de144a7c6366"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "199a2de9bface2573b821547687706e2153db3826c4aaa5de02f90311022ecac"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_GoogleDataTransport.xcframework.zip",
      checksum: "33137458534924f22e50523a6cca67775c5e0fa1f8ac1de4963e65daa519844c"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_GoogleUtilities.xcframework.zip",
      checksum: "afc511d01ef0be8b3c9b4923e4e3efea14fa77cd95ba955c163b795566399718"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_PromisesSwift.xcframework.zip",
      checksum: "15a0e0d7054ac669e27d1765122669e16ebdbf2c70da8158292637375a754121"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.11.0/_nanopb.xcframework.zip",
      checksum: "2ee82e3e50512a47f8ae3687239d53a06618d04ed78c5cdfbfc521554b061cbf"
    )
  ]
)
    