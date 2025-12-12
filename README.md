# Firebase Analytics & Crashlytics XCFramework

A Swift package for pre-built Firebase Analytics & Crashlytics xcframeworks.

This repository is a fork of [akaffenberger/firebase-ios-sdk-xcframeworks](https://github.com/akaffenberger/firebase-ios-sdk-xcframeworks). It has been modified to include only three frameworks: Analytics, Crashlytics, and RemoteConfig.

## How it works?

A script is set up in a GitHub action to checks the [firebase-ios-sdk](https://github.com/firebase/firebase-ios-sdk) repository periodically for new releases. If there is a new release, the script will download the `Frameworks.zip`, unpack the xcframeworks, along with their dependencies, and then update the manifest `Package.swift` file. Afterward, the script will open a pull request for the changes and create a draft release for the XCFrameworks in this repository. As the final step, we need to manually merge the pull request and publish the release.

Please follow the steps:

### Merge the pull request

1. Rebase and merge the pull request.
2. Delete the `release/X.Y.Z` branch, which is no longer needed.

### Publish the release

1. Double-check the draft release (all information is prefilled).
    1. The new tag is set to the new version.
    1. The target branch is set to `master`, since the PR has been merged.
    1. The title and details contain the correct version.
    1. Ensure "Set as the latest release" is selected.
2. Publish the release.

<img src="https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios/assets/158831/cf657f01-2a22-46fc-977a-863236ef8a43" width="700">
