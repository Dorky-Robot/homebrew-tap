class Katulong < Formula
  desc "Self-hosted web terminal with tmux sessions and WebAuthn security"
  homepage "https://github.com/Dorky-Robot/katulong"
  url "https://github.com/Dorky-Robot/katulong/archive/refs/tags/v0.26.7.tar.gz"
  sha256 "c1b47165251f657ecfa97f1b55a8b115c136982ddc6262375287a75e14752c5b"
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
