# DevClean

A small macOS app that frees disk space taken by developer caches and build
files: Xcode, Gradle and Android, Flutter, CocoaPods, Homebrew and npm.
It shows the size of each item, and deletes only what you tick.

Everything it deletes is a cache or build output that your tools recreate when
needed. It never touches source code, SDKs or settings.

**Website:** https://bum-ho12.github.io/DevClean-releases/

## Install

Paste this into Terminal. It downloads the latest release, checks it, and installs
DevClean to Applications without the macOS "downloaded from the internet" block:

```bash
curl -fsSL https://raw.githubusercontent.com/Bum-Ho12/DevClean-releases/main/scripts/get.sh | bash
```

Or install by hand: download `DevClean-<version>.zip` from
[Releases](https://github.com/Bum-Ho12/DevClean-releases/releases), unzip it and run
`bash ~/Downloads/DevClean-<version>/install.sh`.

Without either script: drag `DevClean.app` to Applications, then either run
`xattr -dr com.apple.quarantine /Applications/DevClean.app`, or allow it once
(macOS 15+: **System Settings > Privacy & Security > Open Anyway**; macOS 14 or
earlier: right-click the app, choose **Open**). This only happens because the app
isn't notarized yet; it doesn't mean the app is damaged.

Needs macOS 13 or later. Works on Apple silicon and Intel.

On first launch DevClean shows a short guide. You can reopen it any time from
**Help > How DevClean Works**. Release notes are under **Help > Release Notes**,
and **Help > Check for Updates…** looks for a newer version when you ask it to.

## Using it

- **Projects** (top right): the folder that holds your projects. DevClean
  looks there for build folders and for the Gradle version each project uses.
- Tick what you want to clean and press **Clean**.
- **Gradle auto-cleanup** makes Gradle delete versions and cache files you
  haven't used for 1–2 weeks by itself, so ~/.gradle stops growing.
- Unticked by default: the full Gradle cache, the Flutter package cache and
  the Trash, because cleaning them makes the next build slower or is permanent.

Cleaning the Trash needs Full Disk Access (System Settings → Privacy &
Security → Full Disk Access). Without it, the Trash row doesn't appear.

## Uninstall

Drag DevClean to the Trash. If you had turned on **Gradle auto-cleanup**, turn it
off first, or delete `~/.gradle/init.d/cache-cleanup.gradle` afterwards.

## More

- [Release notes](CHANGELOG.md)
- [Privacy](PRIVACY.md): DevClean collects no data.
- [Support](SUPPORT.md) and [issues](https://github.com/Bum-Ho12/DevClean-releases/issues)
- [MIT License](LICENSE)
