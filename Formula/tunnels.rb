class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.21.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.0/tunnels-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e3d8449e04ca977da95d5f2d3d41aa76a99583caa7c092ed0b72ae283d3efcd"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.0/tunnels-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "167b07f504efc2d849d423d4497dd9867aebfee7dcb5631cfa0e0cf576e334b4"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
