class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.4"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.4/sipag-v3.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "45e5cf2c3be88abeb797f3128fd33f4d5a0249a210b3200545e4d6da1d4ba278"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.4/sipag-v3.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "fec3324648bc3667894859aa5283c712c92323a9a49d2b96e88097a19db2f14b"
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
