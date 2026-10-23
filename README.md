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

The formula pours a **prebuilt binary** for your platform — no Rust toolchain and
no compiling. Supported:

| Platform | Binary |
|---|---|
| Apple Silicon macOS | `crabripper-macos-arm64` |
| Intel macOS | `crabripper-macos-x86_64` |
| x86-64 Linux (static musl) | `crabripper-linux-amd64` |
| aarch64 Linux (static musl) | `crabripper-linux-arm64` |

## Upgrade

```sh
brew update && brew upgrade crabripper
```
