class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.1/tunnels-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "542c56025a5847ef264a0985dfd3a6610ef4a47873eb973f67ebe9cdb4dec5bb"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.1/tunnels-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "7c5da88fee816604443d7474f4bad37ee1d554161a4c1988ad3d6d35e01622e1"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
