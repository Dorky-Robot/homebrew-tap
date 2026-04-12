class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.2/tunnels-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "484cc51b095a79ea47b5f06565aa8bd2bc21273d73a50752b0c89731f8daefc5"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.2/tunnels-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "e529d0d4deb4f5592155118a6e9ed2cd96f570bc36dacc0630b69f7647fe222d"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
