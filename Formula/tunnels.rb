class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.21.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.1/tunnels-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "165d75c64f1c71c3a485efc5aa7a4870729f4a04753bc093f2fc63da5bea205c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.21.1/tunnels-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "4e3e9579d664596635cd1a107714bf4004808685310d7b66a14d58382a863c00"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
