class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.2/crabripper-macos-arm64.tar.gz"
      sha256 "ccf81169f80ae79dedc76026d404709b5775fb1d0efefd39cb16a667784d9653"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.2/crabripper-macos-x86_64.tar.gz"
      sha256 "88e11cfe4ae8cbedad3fd02c13e8537ac55624629420dbcd165efec1d5a7ace6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.2/crabripper-linux-arm64.tar.gz"
      sha256 "30b5d5b6582e5834663db452ec980f22d6827d13d198cb5cf3bb993cc1f49f14"
    end
    on_intel do
      url "https://github.com/qbus00/crabripper/releases/download/v0.1.2/crabripper-linux-amd64.tar.gz"
      sha256 "37bb53af2f766c781c9def84ae22f8c7f00e4d4f1b507f0cf33bafab6bb0f081"
    end
  end

  def install
    bin.install "crabripper"
  end

  test do
    assert_match "crabripper #{version}", shell_output("#{bin}/crabripper --version")
  end
end
