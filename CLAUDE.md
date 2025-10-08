# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Swift Package that provides pre-built Firebase Analytics and Crashlytics XCFrameworks for iOS, macOS, tvOS, and watchOS. It's a fork of `akaffenberger/firebase-ios-sdk-xcframeworks`, modified to include only Analytics, Crashlytics, and RemoteConfig frameworks.

The repository uses an automated workflow to track upstream Firebase iOS SDK releases, download the official binaries, repackage them, and publish them as a Swift Package.

## Architecture

### Package Structure

- **Package.swift**: Swift Package manifest defining three main products:
  - `FirebaseAnalytics`: Analytics framework with all its dependencies
  - `FirebaseCrashlytics`: Crashlytics framework with all its dependencies
  - `FirebaseRemoteConfig`: Remote Config framework with all its dependencies

- **Sources/**: Contains minimal source files (dummy.swift/dummy.m) required by SPM, plus:
  - `Firebase/`: Umbrella module with Firebase.h header and module.modulemap
  - Individual framework directories with excluded files (e.g., `run`, `upload-symbols` scripts)

- **Binary Targets**: All frameworks are distributed as `.binaryTarget` entries pointing to XCFramework zips hosted on GitHub releases

### Automation Pipeline

The `.scripts/package.sh` script handles the entire update process:

1. **Check for updates**: Compares latest firebase-ios-sdk release vs current repo release
2. **Download**: Fetches `Firebase*.zip` from upstream releases
3. **Extract and filter**: Unpacks and selects only Analytics, Crashlytics, and RemoteConfig frameworks
4. **Repackage**: Renames frameworks with `_` prefix, zips them individually
5. **Generate Package.swift**: Uses `package_template.swift` to create manifest with computed checksums
6. **Validate**: Builds the package locally to verify correctness
7. **Deploy**: Creates release branch, opens PR, and creates draft release with zipped XCFrameworks

### Dependency Graph

- `FirebaseAnalyticsTarget` depends on: Firebase core, GoogleAppMeasurement, GoogleUtilities, nanopb, etc.
- `FirebaseCrashlyticsTarget` depends on: FirebaseAnalyticsTarget, GoogleDataTransport, FirebaseSessions, etc.
- `FirebaseRemoteConfigTarget` depends on: FirebaseAnalyticsTarget, FirebaseABTesting, etc.

## Development Commands

### Validate Package

```bash
swift package dump-package
```

Verifies Package.swift syntax and structure.

### Build Package

```bash
swift build
```

Builds all targets. Note: This is a binary-only package, so the build primarily validates linking and dependencies.

### Update to Latest Firebase SDK

```bash
cd .scripts && sh ./package.sh
```

Runs the automated update script. This will:
- Check for new Firebase releases
- Download and repackage if updates exist
- Create a PR and draft release

Add `debug` flag to force update regardless of version:

```bash
cd .scripts && sh ./package.sh debug
```

Add `skip-release` to generate files without creating PR/release:

```bash
cd .scripts && sh ./package.sh skip-release
```

### Manual Release Process

After automation creates a PR and draft release:

1. Review and merge the PR (rebase and merge)
2. Delete the release branch (e.g., `release/12.4.0`)
3. Edit the draft release:
   - Verify tag matches version
   - Set target to `master`
   - Add release notes following previous releases
   - Ensure "Set as the latest release" is checked
4. Publish the release

## Important Configuration

### Included Frameworks

Only these frameworks are included (defined in `.scripts/package.sh:322`):

```bash
included_frameworks="FirebaseCrashlytics FirebaseAnalytics FirebaseRemoteConfig"
```

To add more frameworks, update this variable and the corresponding products/targets in `package_template.swift`.

### Repositories

- Upstream: `https://github.com/firebase/firebase-ios-sdk`
- This repo: `https://github.com/screeningeagledreamlab/firebase-analytics-crashlytics-ios`

### GitHub Actions

`.github/workflows/package.yml` runs daily at midnight UTC to check for updates. Can also be triggered manually via `workflow_dispatch`.

## Notes

- This package does NOT contain source code for Firebase frameworks—only pre-built binaries
- The `_` prefix on framework names (e.g., `_FirebaseAnalytics`) distinguishes them from the official Firebase SPM package
- Platform-specific frameworks (like `_GoogleAdsOnDeviceConversion` for iOS only) use conditional dependencies
- Resources are NOT bundled due to SPM limitations with binary targets
- The iOS Example project demonstrates integration but may reference the upstream repository
