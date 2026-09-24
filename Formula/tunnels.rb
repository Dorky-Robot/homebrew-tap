class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.5/tunnels-v0.16.5-aarch64-apple-darwin.tar.gz"
      sha256 "a6fb981d3c674129aed287d13048752d0f2889f5bfb93595c6e71fc028837272"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.5/tunnels-v0.16.5-x86_64-apple-darwin.tar.gz"
      sha256 "c81479806b08ea62e12810f5083936954f337f07a66b6c666a8e89f3fb6d396b"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
