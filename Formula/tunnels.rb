class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.16.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.6/tunnels-v0.16.6-aarch64-apple-darwin.tar.gz"
      sha256 "b90255b9bec1211e55bdd570e1810a00777056904ab3fc4766925d80dea4b99f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.16.6/tunnels-v0.16.6-x86_64-apple-darwin.tar.gz"
      sha256 "e095cff0735947f85410a8910b63971d1878c83fb843067cea48a7426b51927c"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
