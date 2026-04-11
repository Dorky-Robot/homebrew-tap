class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.2/tunnels-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "8b2bfda95b3b463ef48aff820f071afd861c31149c30d91a5b7478f78f313299"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.2/tunnels-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "b90ff8177d45cdb250636e28a2e0e71c1ee7a6390ad04da1e25693512fe8e9dc"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
