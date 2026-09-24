class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.21.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.2/tunnels-v0.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "3d6a5ec117cc31963400659a7195b76d499504165b5fd2c81c2cfb639486101d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.2/tunnels-v0.21.2-x86_64-apple-darwin.tar.gz"
      sha256 "9846fd0513c5470d0950ededf31f37d06a75994f8d7bf1aa6f85911e0f67605a"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
