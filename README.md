# homebrew-tap

Official public Homebrew tap for [Markdrip](https://markdrip.app/), private,
local-first meeting notes for Apple silicon Macs (macOS 14 or later).

## Install

```sh
brew install --cask markdrip/tap/markdrip
```

The fully qualified name trusts only the Markdrip cask. It downloads the same
versioned installer as the direct download on
<https://markdrip.app/download/> and verifies its checksum.

## Upgrade

```sh
brew upgrade --cask markdrip/tap/markdrip
```

Markdrip also updates itself from **Settings → Check for updates**; the two
paths work together.

## Uninstall

```sh
brew uninstall --cask markdrip/tap/markdrip
```

Your meetings and settings stay in your Markdrip data folder.

## If macOS blocks the app

Markdrip is not notarized by Apple, and macOS 27 can block the first launch.
See <https://markdrip.app/download/> for details.

## Maintainers

This tap is published by the Markdrip release process.
