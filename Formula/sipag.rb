class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.6"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.6/sipag-v3.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.6/sipag-v3.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "2e786b723065af283f5892661ae4b9593333d77ff6a3265c4a2baedda9e0a473"
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
