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
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FBLPromises.xcframework.zip",
      checksum: "dd131c195909f96f5f9c78f1196b971c9da390446017905ab044e2bbed3cfa9a"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseAnalytics.xcframework.zip",
      checksum: "65732d900988f115f141bd3e6c1abb80af18508cc5b49ca57638d1531db6756a"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseCore.xcframework.zip",
      checksum: "fb4699b00afa950794fb52fa4b793accb6e27a2793b85935a982446d4d13505a"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseCoreExtension.xcframework.zip",
      checksum: "ac2d201fcd0dbb40c1514e8a655f3e5a0b95a0c20eb0d3f81e4b7e73e57c211b"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseCoreInternal.xcframework.zip",
      checksum: "5757350823c2e85ed90a7a8037464c6d47c30b1ba5ef9cc1ff0d614e616b924e"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseCrashlytics.xcframework.zip",
      checksum: "0cfc6edb98229ea5db188dce51a5e3d7ada36b65d529f25e78b5201d6973aba4"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseInstallations.xcframework.zip",
      checksum: "d23b62d3971474d520bf1755c52ce8959d83f804d2adf8a1d4cd2be94025f97b"
    ),
    .binaryTarget(
      name: "_FirebaseSessions",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_FirebaseSessions.xcframework.zip",
      checksum: "142f42a0b5c71af872cce2a7626b108808dfa3068320cb44e2376b0ff49535af"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_GoogleAppMeasurement.xcframework.zip",
      checksum: "45a5690b3f15367e0fb4e8c6341d1c223cb56fc489799dabd529376a38089835"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "0cfb4c2b2541517dac85be2550136701852ae754912bc5090d8dcfbb5659a139"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_GoogleDataTransport.xcframework.zip",
      checksum: "2b4cd03d7b06b16b7c178ad4add0e4146f17df1dfe905da258715ca157202808"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_GoogleUtilities.xcframework.zip",
      checksum: "e6820dcbd17acba744a32ebcb9058f10d6c61b1b1639b2ee09224e23dff12cc8"
    ),
    .binaryTarget(
      name: "_PromisesSwift",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_PromisesSwift.xcframework.zip",
      checksum: "1050f398a3fe01a79ba95a8a9391e604f5de29297764d234c01336e91008a383"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/releases/download/10.20.0/_nanopb.xcframework.zip",
      checksum: "c5fdbdd350e1c43cff08d58c25c580a073f73ae54cf8ac6bf1b23b5515bb8861"
    )
  ]
)
    