# homebrew-sidekit

A [Homebrew](https://brew.sh) tap for **[Sidekit](https://sidekit.app)** — the always-on-top, on-device dictation, shelf, and mirror surface for macOS.

## Install

```sh
brew install --cask omkareshwar-tripathi/sidekit/sidekit --no-quarantine
```

The `--no-quarantine` flag matters: Sidekit isn't notarized by Apple yet, so without
it macOS blocks the first launch. With the flag, it installs and opens with no warning.

If you leave the flag off and macOS blocks the app, open it once via
**System Settings → Privacy & Security → "Open Anyway"** — you only do this once.

## Requirements

Apple Silicon Mac, macOS 14 (Sonoma) or newer.

## Update / uninstall

```sh
brew upgrade --cask sidekit     # update to the latest release
brew uninstall --cask sidekit   # remove Sidekit
```
