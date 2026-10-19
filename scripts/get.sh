#!/bin/bash
# Downloads the latest DevClean release and installs it to /Applications.
#   curl -fsSL https://raw.githubusercontent.com/Bum-Ho12/DevClean-releases/main/scripts/get.sh | bash
# Files fetched with curl aren't flagged as "downloaded from the internet",
# so macOS doesn't block the app.
set -euo pipefail

API="${DEVCLEAN_API:-https://api.github.com/repos/Bum-Ho12/DevClean-releases/releases/latest}"
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT

[ "$(uname)" = "Darwin" ] || { echo "DevClean is for macOS."; exit 1; }

echo "Finding the latest release…"
json=$(curl -fsSL "$API") || { echo "Couldn't find a published release. See https://github.com/Bum-Ho12/DevClean-releases/releases"; exit 1; }
urls=$(printf '%s\n' "$json" | sed -n 's/.*"browser_download_url": *"\([^"]*\)".*/\1/p')
zip_url=$(printf '%s\n' "$urls" | grep '\.zip$' | head -1 || true)
sha_url=$(printf '%s\n' "$urls" | grep '\.zip\.sha256$' | head -1 || true)
[ -n "$zip_url" ] || { echo "The latest release has no zip to install. See https://github.com/Bum-Ho12/DevClean-releases/releases"; exit 1; }

echo "Downloading $(basename "$zip_url")…"
curl -fSL --progress-bar -o "$TMP/app.zip" "$zip_url"

if [ -n "$sha_url" ]; then
  want=$(curl -fsSL "$sha_url" | awk '{print $1}')
  got=$(shasum -a 256 "$TMP/app.zip" | awk '{print $1}')
  [ "$want" = "$got" ] || { echo "Checksum doesn't match, not installing."; exit 1; }
fi

ditto -x -k "$TMP/app.zip" "$TMP/out"
installer=$(find "$TMP/out" -maxdepth 2 -name install.sh | head -1)
[ -n "$installer" ] || { echo "install.sh missing from the download."; exit 1; }
bash "$installer"
