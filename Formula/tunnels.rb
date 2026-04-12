class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.4/tunnels-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "4c6e3fa1d38d8a2ecb86c3eba0add929a6b1dce5c45eecfa8f7733e929a9b062"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.4/tunnels-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "3d7138210992250bfa6bd968922236943a4202725ce3ff4416bc4beff6d4b634"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
