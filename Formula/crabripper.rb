class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.4/crabripper-macos-arm64.tar.gz"
      sha256 "8aea98934f005598162a0b2eb7328c86ce13afd72955d8ae5099a10a43a19538"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.4/crabripper-macos-x86_64.tar.gz"
      sha256 "0b71f06a23a755af75b8fd0becb113b602775f9ab3af1f6935ac1c284e337be4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.4/crabripper-linux-arm64.tar.gz"
      sha256 "7fc52a3e275845b831e9daec67ced047f2500b61ffbeb38fb91fcfc76379f221"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.4/crabripper-linux-amd64.tar.gz"
      sha256 "bf774c85c6e402ac402d0904a4a6d9f1437639816e5d4f1ea4b9d625dc1a90d2"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
