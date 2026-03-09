class Tunnels < Formula
  desc "k9s-style TUI for managing cloudflared tunnels and local services"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.7.0/tunnels-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5ce9518bad54f9a3239bcd66e393d4427c42dc84f7570f0f47d52759ce22988"
    elsif Hardware::CPU.intel?
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.7.0/tunnels-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "48a260c56fe72a26ba0a9023971633e5b28cf27fcc7178dbfc3992605679e588"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
