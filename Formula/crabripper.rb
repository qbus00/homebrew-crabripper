class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.1/crabripper-macos-arm64.tar.gz"
      sha256 "5da6f141bcb870ea0b8b45518857387a1e24d8651173a5f457efe973cb79867c"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.1/crabripper-macos-x86_64.tar.gz"
      sha256 "30208b87373e238374ebfe17caf2fd62dca3cbe43593530a910ade0b9da1284e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.1/crabripper-linux-arm64.tar.gz"
      sha256 "8fa1565a2792e0b5326ca3cc2a454770a27205f1935ffc0a37b967f6d7e28577"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.1/crabripper-linux-amd64.tar.gz"
      sha256 "ead7772146406b8620ec3cefe6439849c5bc2b7c22440e82d0ec438bbcd7af2f"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
