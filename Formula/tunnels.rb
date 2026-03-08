class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.3.1/tunnels-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "1f48261a769aad06b73005c4aba1ec0ed3e44bdd94488939e4a6b8b9073c9e13"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
