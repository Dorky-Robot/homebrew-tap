class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.1/tunnels-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "7eb0fca19be946165c705c880ef4929a5ab37e9879c317d3b85f364d93f5782f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.1/tunnels-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "bd5228a37fe187c7b9637b88fb50e12be836ddd5650c487c1165866d9b02a028"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
