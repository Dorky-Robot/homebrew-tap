class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.0/tunnels-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a4d36c48788aecc4979a4a1643eb4730d6145a75336f2f9fd1bded95fbaf704"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.0/tunnels-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "87e0dc136e02b628e9265e19d3661acba3f5edc7044df7c5a1f45ce5932cbdd1"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
