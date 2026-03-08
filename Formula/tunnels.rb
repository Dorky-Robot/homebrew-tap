class Tunnels < Formula
  desc "k9s-style TUI for managing multiple cloudflared tunnel instances"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.4.0/tunnels-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e1a0b6bdd258145d79b82f92390835fdf10293d1be29fe0da62d806434a9648"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.4.0/tunnels-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c828701c91d6a573ee83b884fadc7c405b677e2ba70c8126d2238a10b41d87da"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
