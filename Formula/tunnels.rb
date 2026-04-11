class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.3/tunnels-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "b7106ac597015517ef21675ec436d7fe0e530aee6c748b3a30e281fedc56aa2f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.3/tunnels-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "8436207bc8032d2862315e185da7a658e0f99fd5a643b1a9f580069ad341e5cf"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
