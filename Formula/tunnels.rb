class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.2/tunnels-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "c79728f327553b24456b84f20aecf6390b5feb0585589c9bf6d794e03c21e124"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.11.2/tunnels-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "1e7ac578ac0aaeff0c09154a22410f42a5287f1eac8155be0b67f2533c20c03c"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
