class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.8"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.8/sipag-v3.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "f086378085d1130acb19611460241453702e43921dfc0390ec02abd690f2ea34"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.8/sipag-v3.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "af369deb5fc6eb241d772b866572e29cf623db791470daac944e211cdd0cc6be"
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
