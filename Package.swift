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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FBLPromises.xcframework.zip",
      checksum: "c5cbdf73f67bbf11577e87ecde397bf01c65de50ed7e3145f276fde524ea203d"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseABTesting.xcframework.zip",
      checksum: "d687786fc4f0e45a8a0c551b5b53d97dd351b25b7fa2fbd1e7751e09b75995ef"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "79704b5f42ec97c59137cf1aadca61d0dc67af433f2a64341407324aad6abe07"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseCore.xcframework.zip",
      checksum: "f3bad97bf1b7a97e749f742d2fcb87adc9163625d316e6af0d0d05890cdc3f07"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "e9e04aae9a502a7d947a46da251f0cb754d007f0f0a74cb40d8dff4fa71c36f9"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "a7dde9ed352951feff4229593b51524df36662e4d9950561f8c438b928d7b754"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "5778be40350ab9d78bacb7a153c1d6d7355556fa8167c4e20445d8672d6470f4"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseInstallations.xcframework.zip",
      checksum: "27acc13680991a8c1c6f2e892c837e0b0972b36f5c55002c83cc16a38714511c"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "634f83d2dc75318a625df0850fad1288139dc16ff4678181d1f8645e4777f7f2"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "5cdd57adf62e26e0000f196a42c8957f70307cdf79c4fd99c63f3bf844792d1e"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseSessions.xcframework.zip",
      checksum: "b45804cc55d9bbb65dcb3702e8bb4dda7e24cb211efc44c9e57e59dd69840250"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "123018a51b8ba9c2509fdb5f96541b10bcfdd5d76af307053ab5a4fbe754603f"
    ),
    .binaryTarget(
      name: "_GoogleAdsOnDeviceConversion",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_GoogleAdsOnDeviceConversion.xcframework.zip",
      checksum: "72b03072eb5d14827be810ed7473804921126da4b0aab76670c7496c04ec5264"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "a78640a494a62bf07983e11e1adcf8dae2840c5fd0a611464f6ce7df05b3de9b"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "84a7bcedf651c8671b8c0fd87324dc08dbea281887d960ba14d99a4157c36028"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_GoogleDataTransport.xcframework.zip",
      checksum: "96970a354fbc32475a8c5ff70e11e01e7dd6bcbb7b083494fd0aa496383bf75b"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_GoogleUtilities.xcframework.zip",
      checksum: "de03692c6a2b366ba7c8954a693ba1460f9e7a8749c6dfa7b13e5c67cabe17ce"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_nanopb.xcframework.zip",
      checksum: "f651c44d798e29a61f686e891ef201115000dc9dda79748701ae9a2a8ec8939b"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/12.4.0/_Promises.xcframework.zip",
      checksum: "2ed3f22a43689a704a93e185e02c9a21c4b162881c313e4f6712f4d7141f20bb"
    )
  ]
)
    