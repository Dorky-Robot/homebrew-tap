class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.13.0/tunnels-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5f8fc454fd7f460cdb1cfa6bfdf72892c36cc4a84875910a28162b03ca8eb68"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.13.0/tunnels-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec0696206676ec7c8c4078c7d7f0f75479b2365f5981bbfb6a06219e0b05c83f"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
