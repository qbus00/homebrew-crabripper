class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.3/crabripper-macos-arm64.tar.gz"
      sha256 "c61f6afe2767ae811e1b174b797abecde191909c623c9177815e87795f742ebe"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.3/crabripper-macos-x86_64.tar.gz"
      sha256 "338b7881ad21aecd10a7b978b05ed81eb5a197b9313679c8618b8ff16f4fb033"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.3/crabripper-linux-arm64.tar.gz"
      sha256 "44bf72e62b8ac34bdbe5bc128cb4b693f4d365166ce11733d7f02d0f59030e70"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.3/crabripper-linux-amd64.tar.gz"
      sha256 "0b40999fd75f07f1e2210c713d614153fae755b1e6d2f78b4b53577ed1ea34a3"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
