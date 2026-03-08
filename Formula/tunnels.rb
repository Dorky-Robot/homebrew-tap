class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.2.0/tunnels-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e537482bb372ea8f6902fefc9f4d63d87ea80d2d8d8bcaad7bb2fb351ec2dd75"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
