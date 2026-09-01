class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.0/tunnels-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "fac461c1dae4c20838dd25d25591883ff50bb732650bee4e5b56e1bff441c5f3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.0/tunnels-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "13a08f9935031a3982cd7e07dfdb1dc04590dc67f0e6799bcd776363a5764b1c"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
