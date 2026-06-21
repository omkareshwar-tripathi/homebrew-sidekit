# homebrew-sidekit

A [Homebrew](https://brew.sh) tap for **[Sidekit](https://sidekit.app)** — the always-on-top, on-device dictation, shelf, and mirror surface for macOS.

## Install

```sh
brew tap omkareshwar-tripathi/sidekit
brew trust --cask omkareshwar-tripathi/sidekit/sidekit
brew install --cask sidekit
```

The `brew trust` step is required once: Homebrew asks you to explicitly trust any
third-party cask before installing it. After that, `brew install` puts Sidekit in
`/Applications` and it opens with no Gatekeeper warning — the cask clears the macOS
quarantine flag for you (Sidekit isn't notarized by Apple yet).

## Requirements

Apple Silicon Mac, macOS 14 (Sonoma) or newer.

## Update / uninstall

```sh
brew upgrade --cask sidekit     # update to the latest release
brew uninstall --cask sidekit   # remove Sidekit
```
