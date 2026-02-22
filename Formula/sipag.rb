class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "2.2.0"
  license "MIT"

  depends_on "jq"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.2.0/sipag-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c83086f525590d70ccd68917598d523646b4cc08896e780b5288adc5a608b57"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v2.2.0/sipag-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ebc8ef894de9c6026c21dede5aa41e3bc270ec448ce0504f4cc598d28661d5f"
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
