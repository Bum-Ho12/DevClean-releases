# Changelog

All notable changes to DevClean are listed here. The newest version is first.
Each release needs a section headed `## [version] - date`; the release build checks for it.

## [Unreleased]

## [1.4] - 2026-10-20

### Added
- More caches: Kotlin/Native, Maven, pnpm, Cargo, pip, Gradle-downloaded JDKs, Android SDK index, simulator logs, and caches of older Android Studio versions and JetBrains IDEs. Xcode Archives are listed with a Reveal button and are never deleted by DevClean.
- Dependency folders in your projects (`node_modules`, `Pods`, Cargo `target`, SwiftPM `.build`, `.next`, `__pycache__`), unticked by default.
- A project idle filter (30, 90 or 180 days) so build and dependency folders are cleaned only for projects you haven't touched.
- Gradle report: projects on the larger `-all` download and folders that look like copies of one project.
- **Align Gradle Versions…** moves projects to one Gradle so the others can be cleaned. It checks the Android Gradle Plugin, skips projects with uncommitted wrapper changes or a pin, and backs up each file it edits.

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
