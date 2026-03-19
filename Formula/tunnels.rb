class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.0/tunnels-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d7022b301e6ea51e1a9a70466189d31dddf20b43326f938e4a5565fa5b4fbc0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.0/tunnels-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "b2cd55a23354709f9ae241f93058df071c1dcdcb3d2951f8de5e5f2ed5c8aad4"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
