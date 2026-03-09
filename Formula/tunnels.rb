class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.7.1/tunnels-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "6737c3e6ef885d3e72b2ca75ba5f9532c45501b2450b66e91c98dc06829a8801"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.7.1/tunnels-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "cba7f91a403be2a854036bf015972dd76508da7113c17c8b1dfba34dbee84e37"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
