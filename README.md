# Firebase Analytics & Crashlytics XCFramework

A Swift package for pre-built Firebase Analytics & Crashlytics xcframeworks.

This repository is a fork of [akaffenberger/firebase-ios-sdk-xcframeworks](https://github.com/akaffenberger/firebase-ios-sdk-xcframeworks). It has been modified to include only the Analytics and Crashlytics frameworks.

## How it works?

A script is set up in a GitHub action to checks the [firebase-ios-sdk](https://github.com/firebase/firebase-ios-sdk) repository periodically for new releases. If there is a new release, the script will download the `Frameworks.zip`, unpack Analytics and Crashlytics xcframeworks, along with their dependencies, and then update the manifest `Package.swift` file. Afterward, the script will open a pull request for the changes and create a draft release for the XCFrameworks in this repository. 

Finally, we need to manually merge the pull request and publish the release. Please follow the steps:

- Rebase and merge the pull request.
- Delete the `release/X.Y.Z` branch, which is no longer needed.
- Edit the draft release.
   - The new tag should come pre-filled with the new version.
   - Set the target branch to `master`.
   - Add title and detail. Follow the previous release and update the version/tag.
   - Ensure "Set as the latest release" is selected.
- Publish the release.
