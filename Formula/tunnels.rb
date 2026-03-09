class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.8.0/tunnels-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1f45f0659e742798cca823cd94f7d4c33dbfb6be8c9d27759cb7139426a33a5"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.8.0/tunnels-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "197671ba67eb19e951fff3564b7400fc2e3e10703fafde1eaf0e931b73ec6c98"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
