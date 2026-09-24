class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.4/tunnels-v0.16.4-aarch64-apple-darwin.tar.gz"
      sha256 "8b6aec914daf53bb16d4d1c13b33df3ce58d9d96ff69fb4030fdd0f52d094f40"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.4/tunnels-v0.16.4-x86_64-apple-darwin.tar.gz"
      sha256 "680b8ba601d0575fe4c7e3c3d865d23f90ca52af7f76e17ace7b60165afb94dd"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
