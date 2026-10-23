# homebrew-crabripper

Homebrew tap for [🦀 crabripper](https://github.com/qbus00/crabripper) — a Rust
port of streamripper that records shoutcast/icecast radio streams to per-track
files.

## Install

```sh
brew install qbus00/crabripper/crabripper
```

That's shorthand for:

```sh
brew tap qbus00/crabripper
brew install crabripper
```

The formula builds crabripper from source with the Rust toolchain (pulled in
automatically as a build-only dependency), so it works on both Apple Silicon and
Intel macOS, and on Linuxbrew.

## Upgrade

```sh
brew update && brew upgrade crabripper
```

## Latest `main`

```sh
brew install --HEAD qbus00/crabripper/crabripper
```
