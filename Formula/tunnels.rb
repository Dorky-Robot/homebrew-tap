class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.2/tunnels-v0.16.2-aarch64-apple-darwin.tar.gz"
      sha256 "a60f6578f53b26be364ba1365dcaed52688f03b0e3873056d3e3f39b40e01d05"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.2/tunnels-v0.16.2-x86_64-apple-darwin.tar.gz"
      sha256 "d9d488aceda628feaba90b7f56126ee4a1ca39c470022664db8884a018b6c32a"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
