class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.8.1/tunnels-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "db822518b416c964692137067b5976d1349da84fb28319860d26f80f6f142519"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.8.1/tunnels-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "f21780702b147455f154e54264f8dfddbc2d14698278f62830fd279e39cc3e25"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
