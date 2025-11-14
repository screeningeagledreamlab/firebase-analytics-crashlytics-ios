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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FBLPromises.xcframework.zip",
      checksum: "b89176f62e444730e08cc2f6fa36e08d4aace0cc2c36160033864b803610cf42"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseABTesting.xcframework.zip",
      checksum: "f723206147e5acd6052fe87da7e200a526385a0b6a8079074715ae9877319ac9"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "a0c02352e4ca9eab437e0461ab985038d25b6e678639d353f3bf74cec79358f2"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseCore.xcframework.zip",
      checksum: "1c723cd596a63d1a61656857f4d26ce7bdca13c7403e47573a1d5320344f5fac"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "995e707866ca0ecf5562ab1d65228a9a580612b64a98ea95be5a968994194043"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "0d1582307a33a863243be5b21ccf3e1c97ccd925006b9ef101503c7af7977b41"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "8fb44ec15aa09e77b4b4248edb15537c89fe391409d4461864786bfb76f3314f"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseInstallations.xcframework.zip",
      checksum: "6a8c112f23ff7cacb685ed7e378d983db257e93d96047368ea87d822c847ce07"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "09e95c9ef94bea489d064277df951a799b306bfdea0078088f41cd687200edf4"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "7b99aabe05b32fcb7b53f77afb5507bd181b08efa21fee20640ebe0c33493885"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseSessions.xcframework.zip",
      checksum: "5fcbc8aadd60429b0e42e153facb9d6e20afa1cadf3290ccbe7593ae83b7f028"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "9965ac043dc914f17880273c488ebefe9ae8648c3a98987ca43b36017b992321"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "03e5995250b7803db9bb23e9b93179ab05fe8a0160e051994cf6a3e725c231ad"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "1366eddaa70ab632d9f7d406678d1ed9788697f222a2769ee587f7d92e15e940"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "72f945c79782e8e753f982d2697917dc19d8f8751785bcce25a277060be8241f"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_GoogleDataTransport.xcframework.zip",
      checksum: "cad5d1141549cd0d48ed72fe651b7945871f5fe9b57c420c4b659630e3a54b67"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_GoogleUtilities.xcframework.zip",
      checksum: "6b6043ac61a742849769510eb6855505fcd148c10ff8b7fd9f9377f1c408a60e"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_nanopb.xcframework.zip",
      checksum: "2b71da2a97022e5bc6fd3e81af05b04684de401c8fd68bd9ef371db0ff6a7381"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.6.0/_Promises.xcframework.zip",
      checksum: "3377835a75b79314c26b0e63d72ff3fb4f7189ae7769e52439dc98b2013c3eff"
    )
  ]
)
    