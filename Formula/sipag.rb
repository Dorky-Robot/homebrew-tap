class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.3"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.3/sipag-v3.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "fbd7a204d01d4b1bac6dbf4727911d3afbfc186fae275a96e3fb191af8c23823"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.3/sipag-v3.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "d14b351f2d17b9c77e96113a903a85dea4cbcbe91d2ea0cb899f6429a9f7ee91"
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
