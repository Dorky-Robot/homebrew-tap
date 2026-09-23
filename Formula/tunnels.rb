class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.15.0/tunnels-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "2649fab8e0bc66c5f5fefa014f8640ddf652fe882167c9457bf859c6a1960ba5"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.15.0/tunnels-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d6450de5018838def24c6c97bb1edc3174099dca53d9ed82dcc92fbc71cc308"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
