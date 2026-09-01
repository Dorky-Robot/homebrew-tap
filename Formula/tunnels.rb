class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.2/tunnels-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "db133de3f57893751badd9068eb24bf41843129985b797756c7d566fef0251b8"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.2/tunnels-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "03492ade419b39625fda3675a26c99615e940ce9ef08602b972e3d8404a2b39c"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
