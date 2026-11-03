class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.6/crabripper-macos-arm64.tar.gz"
      sha256 "a34ec8504ed99d128cd047bdb50fa796c943c311276c1c7ed69821654d8e2039"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.6/crabripper-macos-x86_64.tar.gz"
      sha256 "eff9d1b0d6fd6d3c1cbea17b91055a5ff53c79e31a193ac09712636fe986d8da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.6/crabripper-linux-arm64.tar.gz"
      sha256 "b215b91e81e4bbebc3e1479950dd5faf64348eb4eaf8e3adcb16bd861999f45e"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.6/crabripper-linux-amd64.tar.gz"
      sha256 "efbc543558ad827f99b7fc354d39e194fc79227c61d317512a3ae043ce72c29e"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
