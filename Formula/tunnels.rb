class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.4/tunnels-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "af191a9eb534f66c27fa5bbd113e4493b478f420b7541d0576d9f7fdc6f5f356"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.4/tunnels-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "1e577893a141e0b73c752fc037dd4968a72d18137875d256d06e286e6edab8c8"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
