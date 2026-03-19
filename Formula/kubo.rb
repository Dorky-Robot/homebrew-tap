class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.3/kubo-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "a382d856e7ea93128e9166ec0474e2c97bb72c7f65b3b428f4c7e1aa9962436d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.3/kubo-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "a2cf373dec0ea2e0f71f971c18e3c1aa9942ddc2138e34a25f86f5eabc7d959e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.3/kubo-v0.5.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "122d96f7afd2eeb2ae8dd2a6d4d14c012bcb420784dddb63da96645b11715d6c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.3/kubo-v0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f9f1b873e6a3a3ac92f629c3c1ba7d9ab86e69d81d63f86ee07f4b3e3dadb3d"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
