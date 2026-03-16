class Katulong < Formula
  desc "Self-hosted web terminal with tmux sessions and WebAuthn security"
  homepage "https://github.com/Dorky-Robot/katulong"
  url "https://github.com/Dorky-Robot/katulong/archive/refs/tags/v0.26.8.tar.gz"
  sha256 "4d564ece3ed7f0f73bc4984bd4ab39039eb1189d5fbe98df0fb1944fa522b1f4"
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
