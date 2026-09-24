class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.22.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.2/tunnels-v0.22.2-aarch64-apple-darwin.tar.gz"
      sha256 "d591d65510a811e3ca8a6344be23a99ec98bdf2fb8ce6c1c326ebfd5c569d339"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.22.2/tunnels-v0.22.2-x86_64-apple-darwin.tar.gz"
      sha256 "171603207761a97288b8c08bf66df435a47750a5f742f2271c40601f634ed1c1"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
