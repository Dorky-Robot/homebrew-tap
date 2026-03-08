class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.1.0/tunnels-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb0c9fe371e246763b9be64f9bfda2a67f332111df66502f98d2cb7a15d83c9a"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
