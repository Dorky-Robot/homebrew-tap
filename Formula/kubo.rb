class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.12/kubo-v0.5.12-aarch64-apple-darwin.tar.gz"
      sha256 "ba4b072a4550cb80e29b22b7619c542442fdfce8220e4e5ec78b7f6070f4d83f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.12/kubo-v0.5.12-x86_64-apple-darwin.tar.gz"
      sha256 "f662c9281173c306a8ecf43c519784dbb76f7e653397a0ffe94db71656007ea0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.12/kubo-v0.5.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "678ddabead26ccf507d7490c8d43d9343b2592076ee22a4d256943ce0c7014e6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.12/kubo-v0.5.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e13b3f7a2e84bf2022c8ecd19fb9b1a0eb732ab481bcb2f3e6be0697c1de4f9c"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
