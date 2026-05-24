class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.3/tunnels-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "ebfb7b713d8793ecef8e2cfc58c97b89c723340b48877b1124892322f068ae52"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.3/tunnels-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "198d05476cf0f4119a13065fb4d25e0f8abbe4e0930f25a5be9886e007ea3624"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
