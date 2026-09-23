class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.1/tunnels-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "36a3ae7662abc2fd895249c0173bf303d6a166eebe4141bcdaa926ddc57abbd9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.1/tunnels-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "d9c29d2a83ca0378ea1482a484042800804eab133c42628f65e518b1d6c44377"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
