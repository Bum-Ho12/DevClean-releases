# Changelog

All notable changes to DevClean are listed here. The newest version is first.
Each release needs a section headed `## [version] - date`; the release build checks for it.

## [Unreleased]

## [1.3] - 2026-10-19

### Changed
- Downloads, release notes, privacy policy and issue reporting now live in the public DevClean-releases repository, and **Check for Updates…** reads releases from there.
- A website with install instructions: https://bum-ho12.github.io/DevClean-releases/

## [1.2] - 2026-10-19

### Added
- An **About** section at the bottom of the main window. Expand it to read what DevClean does and what it never touches, and to open GitHub, Privacy, Release Notes and Check for Updates.

## [1.1] - 2026-10-19

### Changed
- Maintenance release; no changes to how DevClean scans or cleans.

## [1.0] - 2026-10-18

### Added
- Scan and clean Xcode, Gradle, Android emulator, Flutter, CocoaPods, Homebrew, npm/Yarn caches and the Trash.
- A review step that lists the exact folders before anything is deleted, with **Show in Finder**.
- Info button on each row showing the folders behind it.
- **Help** menu with a guide, release notes and a link to report issues, plus a welcome guide on first launch.
- **What's New** window after an update, and **Check for Updates…** (only runs when you choose it).
- The Trash row now explains when macOS needs Full Disk Access, with a button to open Settings.
- Universal app (Apple silicon and Intel) with an app icon.

### Fixed
- "Freed" now reports the space actually released. Items that couldn't be deleted are listed instead of being counted.
- Deletion refuses protected locations such as your home folder and its top-level folders.
