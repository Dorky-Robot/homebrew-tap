class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.2/tunnels-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "ed9eeb53858940e17a10222213076a3224838d0e2e7072ff2e230c82b5e1d2ff"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.2/tunnels-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "00b9aa481e45fb639c2e3aed79e7c7f2f77445c30e3904126096c6ef9835c74c"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
