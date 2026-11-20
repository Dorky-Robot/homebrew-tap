class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.25.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.2/tunnels-v0.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "f9d2cbbb0ace77f7a1876cf4697f2c1e2061605b90dccd3ae2f40fbcda0ec2d6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.25.2/tunnels-v0.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "3dba8c0e1c562e7ef576a13dce6f827f332b48c062c39b02da19f367deb4fd49"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
