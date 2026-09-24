class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.21.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.3/tunnels-v0.21.3-aarch64-apple-darwin.tar.gz"
      sha256 "15fe92aefeab2e03ef3ddfb406aace6d661d0af8248321be3faf38b30ddb72db"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.3/tunnels-v0.21.3-x86_64-apple-darwin.tar.gz"
      sha256 "c8ee17c7ed4a53e233c8b23e400af6f0d4bf13854691b9fc2693633644737859"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
