class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.14.0/tunnels-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a19770c2819494f3fb191030dc769a11ca569c7cdfaaadf32a3b54f6338628b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.14.0/tunnels-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "566b60adfca4a1198afac4e204303c4a90b1ba39b9b6fdf6b43d5521b44b0f36"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
