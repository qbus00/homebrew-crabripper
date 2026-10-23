class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.0/crabripper-macos-arm64.tar.gz"
      sha256 "afbeffe3e1c44fc1de1be5d36d6f636c1efc7d8b7aacc6215bb279d96533288c"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.0/crabripper-macos-x86_64.tar.gz"
      sha256 "33b2637eab98e533d329edea86d0fededbaf788e3d5556dcf1dcb14a3fec06fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.0/crabripper-linux-arm64.tar.gz"
      sha256 "3786a261e74fec28d77f77291431df285b8c6012b1d27053dd82fb77ce0bb243"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.0/crabripper-linux-amd64.tar.gz"
      sha256 "77734cf2b933d87348257497ecbad839f8cc4c6951aedf6e8dc0569c6254b9eb"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
