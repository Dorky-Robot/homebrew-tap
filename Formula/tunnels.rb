class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.23.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.23.0/tunnels-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "35fcd2c9f5c9f680e22c8e2ca7e65772795746874a2bf298620db6474d8f88ec"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.23.0/tunnels-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "684eb1f4ddf2b75d4a1288d889b044fe87e91c336dc0af3d1d6d4470fe5e1166"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
