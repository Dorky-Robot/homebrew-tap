class CleanUp < Formula
  desc "Interactive CLI to reclaim disk space from project build artifacts and caches"
  homepage "https://github.com/Dorky-Robot/clean-up"
  url "https://github.com/Dorky-Robot/clean-up/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8cd3f781850f27d59bf70568d88a03a2a3c58bcb03b35647098845694d4efa15"
  license "MIT"

  def install
    bin.install "bin/clean-up"
  end

  test do
    assert_match "clean-up", (bin/"clean-up").read
  end
end
