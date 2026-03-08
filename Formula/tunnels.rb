class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.3.0/tunnels-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a86d257a447d39d2ded6405dfde3064540cb68a3b2874b3a176b35b2577a14e"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
