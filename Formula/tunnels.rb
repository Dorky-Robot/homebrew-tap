class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.2.1/tunnels-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "058dfcc3865038e85aef6d5d078b47dda8480dedffe93f72585286dd0b2e6dff"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
