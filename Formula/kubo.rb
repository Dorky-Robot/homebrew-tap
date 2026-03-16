class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.4/kubo-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "8999a6a0278db2e739600b9f83d8c0c0fb4f7936a2c87b56ae3652663138cabe"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.4/kubo-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "66244cf0d8d7a8992af0b05aab871837dee2d3ea7fbf194c5f441919ea62c75c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.4/kubo-v0.3.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "793328ba56d3f3957f92a69837835183f765f8e8a049851e05ddc4efa245042b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.4/kubo-v0.3.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c897b7287763f52c8684d986f9d3c24d744b65b7943d1a41eb40a2e3da545934"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
