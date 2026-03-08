class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.0/tunnels-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "79673d11ca590ca5d0cdce89b5df7a17cb0ee820026811b0e665116ad42b1eb3"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.0/tunnels-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "73d38549e897d64751d4b1a6bee56d46520a890bd6a5de91a92b852dc60aaeca"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
