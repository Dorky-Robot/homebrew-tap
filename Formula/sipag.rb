class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  url "https://github.com/Dorky-Robot/sipag/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "46a3c4471fde9b6d418ed3a0f03c01657ea29a8833a9ecaffa03b60c7d76f107"
  version "2.2.0"
  license "MIT"

  depends_on "jq"
  depends_on "gh"

  def install
    prefix.install "bin", "lib"
    bin.install_symlink prefix/"bin/sipag"
  end

  test do
    system "#{bin}/sipag", "version"
  end
end
