class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.4/tunnels-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "9e82f094ab421fa79b5f3af44342aa186f4959c9d4272797f4a0c84a7045b60f"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.4/tunnels-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "1c6eeb4ecf9eb71ef2e1564b993a6891884306dbb4a32845db370d6425882cf5"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
