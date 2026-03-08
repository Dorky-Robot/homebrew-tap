class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.6.0/tunnels-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f9bd47f6add1fedcb759a996770225f3ae8317ebc0f2ec2711990fab8fec2dae"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.6.0/tunnels-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9406ec314a9d70392d4ce62844539049f1797e273fa5b245d3922b77b3ba4c5"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
