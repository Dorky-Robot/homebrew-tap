class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.25.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.1/tunnels-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "49d24abd2ffd0d02efb22d149366ab82120d51d49e56d80d510a2a9b61b0ed85"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.1/tunnels-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "918cc108aedbf727e6b22b573c69bc7d4505c669c392809055e96b256745f482"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
