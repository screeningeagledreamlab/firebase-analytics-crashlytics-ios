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
    .binaryTarget(
      name: "_FBLPromises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FBLPromises.xcframework.zip",
      checksum: "9fcb22e630823273cdd0de7f96248f9a4e865c4fa7684bde307ace0e14b58e08"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "c5e2da0a300226eae38a79493756570ffae4f5e83ffd6fefd303581ac34f5dea"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseCore.xcframework.zip",
      checksum: "47e72eeaa51ba592ff60682e553bdfb5d792438f18233a6bcb5431770d8a6981"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "da07dd85e748eee868a7b2baea217a9c7cc2409af677635d33e29c5cd10e7334"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "1469b149b75ae17033dcd14c556ff65eff6de4430818596109dd8030db5470fc"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "89281d0f6b7da85303fb3cbd221bf28ef34741b1c1d1023af285cc9ac3ee7094"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseInstallations.xcframework.zip",
      checksum: "1c434c6f1069cc4a1bf3a4d7df7caed507ada37f2d3b76bf4d0edcda576a2815"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "34d028f5cff0d112b28ce7225bb92da834717c690758ff6c7de0fc0be573d6e5"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_FirebaseSessions.xcframework.zip",
      checksum: "a4883986d10254fc3794ba1c38a76dac0a41030b60ced34e77347cc9b470d566"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "97d37f62f17632b87fbf051be7f59d568867ec27ac10b39b70faa1fff3e6d804"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "531dec38425b397779cbc0d878b8e76c6c486693dd1b284f5d1e22021502621c"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2c2e4ade030dbb2de0801192eafd71431c41574fdea546bc31d717875f3f0303"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_GoogleUtilities.xcframework.zip",
      checksum: "13a1204b4062c0b91b6f87a3a386a98261ae9629633487ec2e8248deacf1af57"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_Promises.xcframework.zip",
      checksum: "f248f8d444992fa23e865afbedb9baa6d68929820722fff73ceed1e826cdb9c7"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.25.0/_nanopb.xcframework.zip",
      checksum: "4bebe1bc18380323d9e02532adb7e9e82bb929c4921dc948eb6933e4cb2789c3"
    )
  ]
)
    