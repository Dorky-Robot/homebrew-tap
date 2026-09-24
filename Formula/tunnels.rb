class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.22.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.1/tunnels-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ea53fac4ce28390d833481568f58e361c940d34d4e37670b771065f08af4ada"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.1/tunnels-v0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "86d0724bc3eb7a389d54df8f053fff7350aff6a9208ed81872e7305d95e26f7b"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
