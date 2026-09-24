class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.19.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.19.0/tunnels-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f47a680eb0f3755130d0a6113b5690d1dc21bce06b5f95db5b1e01c92d890ab"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.19.0/tunnels-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "94db2a5a22605df4287609c6d3727e427340acca6d5e345cb86fd62b3e27804e"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
