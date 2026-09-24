class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.24.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.24.0/tunnels-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "871a39e5bc7b645998fdcdd4dc92577af66bcc39f4fbcf1731be7461b031dbbb"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.24.0/tunnels-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "1d2fe3941e76af35a537c92ab28ee65603f78c589a3b69b4f950efe5faae0fa1"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
