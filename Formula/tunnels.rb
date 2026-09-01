class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.1/tunnels-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "94af5921ebccd16cd3c0d0bf4f15d5c4c89dd119445dbaf010d8bccfbf32ff43"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.1/tunnels-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "71770975f85c6ee5077efbcbcc93d43bd6786e670139d710435794b175d9b7d3"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
