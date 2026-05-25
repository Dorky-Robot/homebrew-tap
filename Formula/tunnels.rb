class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.4/tunnels-v0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "db784f1c434fe56793b5f3a2532b7369fad2a8d0e737960c6bb93064858735dd"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.4/tunnels-v0.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "4174a322544bd2b4b4f1ecaaec3f11d44454f6fa4e72e0b669e87064cf9bb80e"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
