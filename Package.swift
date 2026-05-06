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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FBLPromises.xcframework.zip",
      checksum: "09a2770a97b010e89fdb9c7fb36e028e4a427e33f203148e0853cbbd92c1b12b"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseABTesting.xcframework.zip",
      checksum: "10cfaa863d754f8c22ce39b17c3631f3996d5ca9c589859d79b5c8cea3d5bac4"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "12b4f359e9be2f41b5c717a2971e9e4950603ca80dcb69fc030d7581cf48d3b5"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseCore.xcframework.zip",
      checksum: "6de5a236490bd8213e8b2c7e1d4bdc3cdd59699d795c10e0dcde9fc3d7d93686"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "3327c45bc6f667ed2108af9fa9e77cfa88fdb18e85d580944869a48fe38e73d4"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "c043598ef16d37de0f3d4ae4c1ce8a5d47a937f8c41630910f53e470176a5c45"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "38eeebea3a58827567fc5756d522e757b74f64f9cb8b43639cdca34a38681588"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseInstallations.xcframework.zip",
      checksum: "9a6a49c95d23c61a0cc443c7e46e2c0a1dd1321123c2a5d219d0f1a7e222cbdf"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "6dadfc10a2ce3122afdbe54fc8eb34c53be32fe558a5bc14bb189ce9021d7765"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "2425597fa00249534803d5d7509a5d1c243e3e30c8244289f973d47c8faa4799"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseSessions.xcframework.zip",
      checksum: "b1e1a95f49ced313f673dd8ca55652e73276756be4d836e3a5102eaf0a9529b6"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "03bf65d775c3ec271208566ea96a27af4c318f113b2098436b1f20df0b0a6fc6"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "619f8db9178d0acc59dab0cb8966d74291a1306360b2840370f98caca2609997"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "37f875f0cb43d577182bfaa785b8e79dd6a8603e7e9ad0ad4b13bb2439654eca"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "34c719cf4e5bbbb533facaa3f30c791b044c56349b47ab410ed7f968dcf74cdf"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_GoogleDataTransport.xcframework.zip",
      checksum: "b7416c2bc9ac21362c8dc32b2322f3423dd27413569fcd078c473f62fa87952a"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_GoogleUtilities.xcframework.zip",
      checksum: "de75fc41fc1ec1a53e36d40c5c144dba3d5d152fec11af8baf8d491d4e4dc686"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_nanopb.xcframework.zip",
      checksum: "7008cb2ffae095978b9af79b350d7b4e3ac183964dee76c14a913a0e2061ddb0"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.13.0/_Promises.xcframework.zip",
      checksum: "d5b1538354e9a2cc58d7e133c29d7eeab5418c2fa11a0098b66e368c92fcb602"
    )
  ]
)
    