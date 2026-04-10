class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.1/tunnels-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "5da0e08d7283ba38b7a7bdb3707ac34a57dc757b751e08816e7f3ddbe269ca01"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.1/tunnels-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_NEEDS_INTEL_BUILD"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
