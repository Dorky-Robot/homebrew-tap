class Katulong < Formula
  desc "Self-hosted web terminal with tmux sessions and WebAuthn security"
  homepage "https://github.com/Dorky-Robot/katulong"
  url "https://github.com/Dorky-Robot/katulong/archive/refs/tags/v0.26.0.tar.gz"
  sha256 "44265043880bd87b2e0742fab688733eda5d9274ecbadaca1b5de8869f0855ec"
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
