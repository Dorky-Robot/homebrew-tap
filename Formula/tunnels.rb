class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.18.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.18.0/tunnels-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a49d203c6692f7eeb343e36a45d90acfc0dc4b99ce17e7034fb811b6b96b224"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.18.0/tunnels-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "3e664c9905e1511abb7fa4590359c72ffaba1bc69cb255d6c150a9a95000d88a"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
