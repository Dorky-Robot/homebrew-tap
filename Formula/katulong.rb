class Katulong < Formula
  desc "Self-hosted web terminal with tmux sessions and WebAuthn security"
  homepage "https://github.com/Dorky-Robot/katulong"
  url "https://github.com/Dorky-Robot/katulong/archive/refs/tags/v0.26.2.tar.gz"
  sha256 "dbe9a8435c98395c745722f0cbefac66c0c2d1e6510da2277ff928e84ea7ef4f"
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
