class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.7/crabripper-macos-arm64.tar.gz"
      sha256 "0eab828867b0ca6c9e312fe914ff94d76e34d08d66f30b7c90e7e1c2d80f6acf"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.7/crabripper-macos-x86_64.tar.gz"
      sha256 "59c7848573d005968ac882366850e2d243deaee62c9b467be66f85f36c74dae9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.7/crabripper-linux-arm64.tar.gz"
      sha256 "6b90617ce80d078dd87148efb04a27a923e574a487d3c41faeee45991eebe187"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.7/crabripper-linux-amd64.tar.gz"
      sha256 "191a4c003de1b9b2ede2b25df8f8c0f9392a00724057484a7beea81c43a2d779"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
