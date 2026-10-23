class Crabripper < Formula
  desc "Rust port of streamripper: record icecast/shoutcast streams to tracks"
  homepage "https://github.com/qbus00/crabripper"
  url "https://github.com/qbus00/crabripper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6b0f80b6d83fab4503f64b2512e5d0d3d3442087f5185d786fb35143cd68f990"
  license "GPL-2.0-only"
  head "https://github.com/qbus00/crabripper.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "crabripper 0.1.0", shell_output("#{bin}/crabripper --version")
  end
end
