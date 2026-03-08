class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.3/tunnels-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "1da09534e0c295a0def9a031dc08482dee48579e79e0e0befb1adbbbc223a513"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.5.3/tunnels-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "ac0ec3afe46ac4829383f4cfc433bb68897393403e479bdbf933da50dbce01ad"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
