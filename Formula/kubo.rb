class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0ffd34d108d95d2f8f33a4d3754fedf7d9009de1c551f042d6fcd0b81459730"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b1b031bdd26b8fdd07ab252085181e082a34f2f66eff07c5ea40930f96075f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90914955a15ad84f8699171d36c764eab1f699f1fc7d8650ea7badfd784c705e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5cc945e4cdb35dc6e5493fa2367d0287851b0f0e892b854a01aca09bf95ef2a"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
