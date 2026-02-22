class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "2.3.0"
  license "MIT"

  depends_on "jq"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.3.0/sipag-v2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "f0e991e279b6d562c0829e3bedaa78ea9b921f7f2c3ebed9a93310eb75890b01"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.3.0/sipag-v2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c2c699bc32f4a6a2deb5730d237908796f2e4d8bf421a3ad85868d09df1e3962"
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
