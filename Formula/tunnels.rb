class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.17.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.17.0/tunnels-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "6898f6e982c0b20122c94a683bf9a6512bd45e623f12f667c77f09a229ed0d5b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.17.0/tunnels-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "3fca469205b53717b07f1e518fc66a33ab41dce3598712c6913eb225b8196c1b"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
