class Sipag < Formula
  desc "Autonomous dev agent powered by Claude Code"
  homepage "https://github.com/Dorky-Robot/sipag"
  version "3.0.7"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.7/sipag-v3.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "3d58243555cb3fd2286216a9f3ca5a1a6bb12f1b37adce3d77f1e2dcdc8397de"
    else
      url "https://github.com/Dorky-Robot/sipag/releases/download/v3.0.7/sipag-v3.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "54aaecf7ca4dae21afd389a511c0a5d97c57d00ad0b85cd4864d3004f414e42a"
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
