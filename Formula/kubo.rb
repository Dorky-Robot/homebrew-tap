class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.5/kubo-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "d1ecb90631cf88a10390eeec991d061cd33ce9ae2c399317afa833056babd979"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.5/kubo-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "8410250eddbff7676e58da4d9c1ed382e5443a25a7ee01beb7d275ff166e9d19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.5/kubo-v0.2.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d30d298464df6c416661dd6c998b1423cf6a5be731fa24fac3b2e9677f28c7bd"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.5/kubo-v0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acb7926689c2d3641f6ce215d4ffe3842c42f84bf63b2a3a6d13fbd28b0e4ce2"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
