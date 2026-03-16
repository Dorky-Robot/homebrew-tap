class Katulong < Formula
  desc "Self-hosted web terminal with tmux sessions and WebAuthn security"
  homepage "https://github.com/Dorky-Robot/katulong"
  url "https://github.com/Dorky-Robot/katulong/archive/refs/tags/v0.26.5.tar.gz"
  sha256 "6182204087ff8f12549cf6faab0cd46b2d7c7c2319d867abf8641046a31d47a4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "--omit=dev"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/katulong"
  end

  test do
    assert_match "katulong", shell_output("#{bin}/katulong --help")
  end
end
