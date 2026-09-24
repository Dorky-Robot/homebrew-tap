class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.21.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.4/tunnels-v0.21.4-aarch64-apple-darwin.tar.gz"
      sha256 "c751dea7e2687f965de78b0925a1ba6f6131cd6e66b8568a909638eb2d418fd9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.4/tunnels-v0.21.4-x86_64-apple-darwin.tar.gz"
      sha256 "ef0df8bb7bc8f58d65cbc1541e0c1d409b6ae0f0fdc7848880adbd6beb03e9d3"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
