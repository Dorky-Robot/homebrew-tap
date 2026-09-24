class Tunnels < Formula
  desc "Cloudflare tunnels across a fleet of Macs: a config file, a CLI and an agent"
  homepage "https://github.com/Dorky-Robot/tunnels"
  version "0.20.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.20.0/tunnels-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa8d6f32ca394cc5de5c84702ccb87cc2993582ac6744b918ba3b56e02a3f001"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/tunnels/releases/download/v0.20.0/tunnels-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "a17a4f282cf67b86e3e022019131115ed3479aef838863861456ecfd935bda58"
    end
  end

  def install
    bin.install "tunnels"
  end

  test do
    assert_match "tunnels", shell_output("#{bin}/tunnels --help")
  end
end
