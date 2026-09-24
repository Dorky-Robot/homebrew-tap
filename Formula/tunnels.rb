class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.22.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.0/tunnels-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "6042fbcb6320acf3385459fee34a9a327420e7991e0394a80aec6a279818e640"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.0/tunnels-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1340a33a2fe6591c0cf1c9cfb36febc8301b83e82c7654fbf8b806c46afcf86"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
