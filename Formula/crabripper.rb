class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.8/crabripper-macos-arm64.tar.gz"
      sha256 "62a48b2f15c79be64a987264f7456f0404ee842d778b21105b13e056b7a57078"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.8/crabripper-macos-x86_64.tar.gz"
      sha256 "de4d1c9eba6d96fde2887ede879ac629cf9adb0c576243fc3f6b94abda233584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.8/crabripper-linux-arm64.tar.gz"
      sha256 "14410765e6a2f07d7b9f25ac52e2c08a0940e17a77e3e139d5ab2c0c003d9170"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.8/crabripper-linux-amd64.tar.gz"
      sha256 "82ab8c4154da26e30087a3ee99038e75d578f111ab6767e0873f0cbc05e50f7d"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
