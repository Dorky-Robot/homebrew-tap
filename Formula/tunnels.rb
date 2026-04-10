class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.1/tunnels-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "4e894bb5d86dae66e2e8a382e990a84035f84130ecd3f172910fc9dd822837f5"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.9.1/tunnels-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "988c39fdc9f6ed1f18ceb4758e1905128b6e1b7b224cda8d4eb209035ffd963a"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
