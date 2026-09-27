class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.25.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.0/tunnels-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f982caa2297b5c04fb98bea602f079ea1b711f5026b168ee42d5a2ef6e927f8"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.0/tunnels-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "a18462da721b82d8f437d1c37d30c46bacfa0d7cb4c6a5c4a33cb6e4ec649522"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
