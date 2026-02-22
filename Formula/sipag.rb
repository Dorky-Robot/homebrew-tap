class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "2.4.0"
  license "MIT"

  depends_on "jq"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.4.0/sipag-v2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1235cefd8d4b3f75e57f14c6a3bc8c2f74e84cb3bfdc64ebd971172125b214f9"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.4.0/sipag-v2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c3a26a71cc539d3c008861080092ab6d88be3f6e6089c15caba17f37f14a397"
    end
  end

  def install
    bin.install "sipag"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/sipag", "version"
  end
end
