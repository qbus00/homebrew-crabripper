class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.5/crabripper-macos-arm64.tar.gz"
      sha256 "71fb4d06efc1562fee632d4cfed0a3d1537f02fff5348bc81fe138c0e084ac0e"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.5/crabripper-macos-x86_64.tar.gz"
      sha256 "9dd43afb16595c75520e0ee07648d55168dd1ee0b87c99f2e2ea3ea870f63bd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.5/crabripper-linux-arm64.tar.gz"
      sha256 "a4796fb3d513cb836a507ce6b0088abe31dc300414989f5995939cf19b34a90b"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.5/crabripper-linux-amd64.tar.gz"
      sha256 "5250cbe14493de8740149baffacb972f928ee34d90de1a76ca0b5532de83f140"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
