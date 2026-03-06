class CleanUp < Formula
  desc "Interactive CLI to reclaim disk space from project build artifacts and caches"
  homepage "https://github.com/Dorky-Robot/clean-up"
  url "https://github.com/Dorky-Robot/clean-up/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "bc92debde27555342506ff90fe9affb3e5e34a2b5f9d0b0610d3ea1c3eaf56dc"
  license "MIT"

  def install
    bin.install "bin/clean-up"
  end

  test do
    assert_match "clean-up", (bin/"clean-up").read
  end
end
