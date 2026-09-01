class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.0/tunnels-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "017ccd25af022594bfa7982bdd69614dce2e2039d64fbd35378e4a94e47e7ba9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.0/tunnels-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "8d36dba4173c53ffdfb985c53fbbb190c45ad15ff5d1f5069c626ba7a8483566"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
