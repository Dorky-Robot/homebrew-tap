class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.9"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.9/sipag-v3.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "07e6ade3b569a96a684fa4e8aacaf4d173b2deec471f1b97973e361b9f9263d1"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.9/sipag-v3.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "ca8bbaac70e4ad40ef3352a6f136e8215fb07ad990d41f454e311b994462e43a"
    end
  end

  def install
    bin.install "sipag"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/sipag", "version"
  end
end
