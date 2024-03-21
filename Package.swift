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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FBLPromises.xcframework.zip",
      checksum: "5b8cf4ca6aace1d8bdabea8efda47b183789b1a9937d053caf3d93a1e7255a70"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "016cbb19e44e5e13355be958dcf04d1145a93412e2c3d1f84a9749c4fdeda7c4"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseCore.xcframework.zip",
      checksum: "752508f4a3af1136f40352c2c0da52d0e9444398badd2ee77ff960e38772b7e1"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "2a04291c97e9b3f7318f0d32c2121ade083b4ff789047722a2b2ff4361233bcb"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "b26c516630d95797e71e85a81172d7d9459b3992e484274f218b249a325dd4c3"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "77d4b54a5a31f382a9da97b6b7af1978fef20de72195a10590c113a18780fcf3"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseInstallations.xcframework.zip",
      checksum: "816e0d474bc6a976a1ee522fbb46977601bf2157f68135fe3073e5cdfa0757e9"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "4c46955476d333cf4f2e3ffa1103174bbe621458808d0e66b936d5b52bb1ce14"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_FirebaseSessions.xcframework.zip",
      checksum: "380587a2b8d2da791a90a3dfa13049a4c2c4022eb4fbb1498c78b7ce47ec6e02"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "8dc1dc148f1179e524d61e0634bec26e9506ed1cf6a286c19d187a6121317f88"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "74b50df8e442625c02a58dde16f59685423e250d5ebeaafff3f3c4a829457a15"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_GoogleDataTransport.xcframework.zip",
      checksum: "9b120946d1eab42b88622fc25fc4db5b980fadeec6ce6c0ff0272f9d0bdadc55"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_GoogleUtilities.xcframework.zip",
      checksum: "98d8c027ce58f4a61c2ebe71655ac49c5d5fe8a3267f9330b2c25e3a93d8467d"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_Promises.xcframework.zip",
      checksum: "7fbf5515dec4533877494698d667dc1ed007f31fc386f2f07a3f189a86d20b4c"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.23.0/_nanopb.xcframework.zip",
      checksum: "6069fb27ba227ef916256310eb117def2648e1ae434ba7eec2ffee7678c45efa"
    )
  ]
)
    