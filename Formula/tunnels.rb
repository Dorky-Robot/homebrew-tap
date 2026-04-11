class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.0/tunnels-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0d501545bbafff722298510e51305f5031652da04eacf7a07f04acdbc028b9e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.10.0/tunnels-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "52d64512319afe42ca8b37ac6aaad6e34d4ee497aa4265742fb21de64dac5019"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
