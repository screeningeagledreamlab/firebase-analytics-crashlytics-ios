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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FBLPromises.xcframework.zip",
      checksum: "01a8ae3ff249b87912c900288f9a5e277341d485f7cd177acafb39876d0f7e23"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseABTesting.xcframework.zip",
      checksum: "b63e200cbfd590ff6d3c7bbd722166c088d07b36d736699d46a7c2540a39bcee"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "94aa1a8af697f34b908f8d94cd241fe4c32f608c7fa2bffc8af04042d7e0ba91"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseCore.xcframework.zip",
      checksum: "aec727aa1b354faaee0bcc3c5e9d5243c404caf5e4eafdeb6d99a35dc018b46a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "6dd4f3bb2fe1d1920c5908777f293c11e0f2d2a4b75e6a6fc01aeb77bd1f5088"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "4ebfb772597c47d71cf1bd32f332610c9c518314195e2236d80e759b30bc5761"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "dd6dc603f621cccdba7d48fbede6cb260a29bdc5e6b0baefd48aa1b2cf6f7b36"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseInstallations.xcframework.zip",
      checksum: "69707e77108b6002783c62057196048acc7624ece9866955faabbc5cc5be08d5"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "0c54ffc2ec3a0b9693edb637500dce124c3a46f06ed7659d31ee75c9ff646f28"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "647294c341eafeb49d41e356f46dc08a2ecef650057389a7e4aecbbdd9a93271"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseSessions.xcframework.zip",
      checksum: "2dfea08eccbaaebe82ec120f6f751c275daf8d32f7842358232f05a7e41fbb7a"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "dacc5274940531e4f52f7a18f6c5942f50afcfcfc4faf0e0448f6ac3b576d840"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "1dfac7bc0b3160c0e077d9408ab178266577883204b1f4b0a380aa05630f7de3"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "060c8a93c8ff24a814c96daf29d9db81822b12040c80d4734c5c0e73bcc3f081"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "fb56b4c1debc1684f438a4422e0892771fa1243ca3a15ead4e717678107afcd1"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2fbe973fba8799e2c9fcc371b66dacfa276e31fb5ff699e5ab3fa5762ce9ec33"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_GoogleUtilities.xcframework.zip",
      checksum: "e96d5f1675edfb4f0e784790b7fcc571fdd8443f10b0fcbbc37a92a210476d5e"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_nanopb.xcframework.zip",
      checksum: "0db34ce8f152934144341ccdec1af97f70ad443bbfd19759475535a72d7bb428"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.5.0/_Promises.xcframework.zip",
      checksum: "69f56e66d27bc3dabbb6a766b257f2e8d5ad74f29acbb35d593f82a6acf82520"
    )
  ]
)
    