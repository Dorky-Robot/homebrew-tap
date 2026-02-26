class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.5"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.5/sipag-v3.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "e1ff3d243485fc744205e3d49015fe9428e410fe801aff1a9ff348fdf34b1eb8"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.5/sipag-v3.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "52556497e6f2dcff083c65047b2ba39423203c02593d77ca4015ddbf3c14e0cc"
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
