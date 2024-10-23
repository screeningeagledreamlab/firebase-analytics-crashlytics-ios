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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FBLPromises.xcframework.zip",
      checksum: "558a1e7b008fdf2de9515a37164ce59616712cc18b72837b35a5f7f5d24ad143"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseABTesting.xcframework.zip",
      checksum: "f1ae85f72ef3912fe3c2559a3d281bcc8b8852b632f3d75beef961c9233b81cb"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "82eb7405249245e1da012dfca9a06f382a480d8831a65e5e6e7851f8967e0221"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseCore.xcframework.zip",
      checksum: "a5b74c2aa2be82571f33b48fa9dccebba769e0acc1563d8e357508092f29d0c8"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "006001875bf3343b020948c6f4f1bf118c3592d0d2418bd5d6772f5d2a0a0b27"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "88139e12c2670cd0d49cdfca84b78e23cccb6e9fcc81817a1c4dff5b38688866"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "e77b0c1119fd1dd088b8a7be84fe34a5e2116ecdb21d3e14e782a0fda065c07b"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseInstallations.xcframework.zip",
      checksum: "872dce039198fc0fea1d85f913004772f47b067214cf0067c54213983dfb8f49"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "58b7fbe1ca3347b133974c08468f52c8f7d66e59d93d637adabcc31b25e7d5b3"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigInterop",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseRemoteConfigInterop.xcframework.zip",
      checksum: "934cc0b66679c36af93d22cc070ff6185587a5dbe45288b461d4b935ca3dad2f"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseSessions.xcframework.zip",
      checksum: "a4732778e634d89a0986cc046d07210d2797a0f15f8da4d3feb3ecc4903f6733"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_FirebaseSharedSwift.xcframework.zip",
      checksum: "4e703b9f83aca22f7f759fe459ab403f218ddc977f5d6e9e3b1c2cfed588b0a8"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "4837ab8010ba8525b024edcc773288202c20f220ed3d2f014b85d8b6be3d41c2"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "6429207f630a0395d29b0a893aa848552054d68318402c5e70240feb8fa61a2a"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_GoogleDataTransport.xcframework.zip",
      checksum: "be6de6d69064be17cf602c0bc2cf3898c6923d5d76079f2c92c96bfd468c1db8"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_GoogleUtilities.xcframework.zip",
      checksum: "40236f45c3fb3944ab8d4377889d5f17a0e3de4b331abb59003f1b9535cb3be6"
    ),
    .binaryTarget(
      name: "_Promises",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_Promises.xcframework.zip",
      checksum: "8264992a757c8093baee5740317b6bf9f90983f7d976ab0937e6a4267e6b9c53"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/11.4.0/_nanopb.xcframework.zip",
      checksum: "11f01e05d21dd0c4c95ef5402a46cfb2ab5e72c46b8ad8dc4dc140121d8ee69f"
    )
  ]
)
    