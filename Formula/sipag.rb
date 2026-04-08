class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.10"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.10/sipag-v3.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "8247e0486f9f78587a0f2050b93149f5696ede59352f9cd637ecae8325bb12ed"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.10/sipag-v3.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "97586e29b92fdc0d0e57f752f9c8117fa5c52a88bd032179167be329cd09d8fe"
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
