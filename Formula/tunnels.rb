class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.1/tunnels-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "7074078d72ef9a542af2368bac6733c84e9f125fbdd7622d3da849b4c70a2c64"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.12.1/tunnels-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "598c8e5957a9b250fc926c9f1846e5db1bea853177a0ef1aa4c75016610ed10d"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
