class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.2/tunnels-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "9edc5b4eb4865250fd6c7e3e23cd8fa58651c68ddddf03ef8e50c4c83fa393da"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.2/tunnels-v0.9.2-x86_64-apple-darwin.tar.gz"
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
