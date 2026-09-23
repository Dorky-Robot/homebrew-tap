class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.3/tunnels-v0.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "7b187d599e554c2391b5846d585beaef99027ace74c2e71df3b28dd9d7c96994"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.3/tunnels-v0.16.3-x86_64-apple-darwin.tar.gz"
      sha256 "fa0fe65957ae9072f199a552eace5637faff3f16585ce59ca482db105c742c04"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
