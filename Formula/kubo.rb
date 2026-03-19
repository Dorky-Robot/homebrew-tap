class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.4/kubo-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "024b13412544fe2752d19d76e5f728bec77dab5376ce6884947f41c988caed69"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.4/kubo-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "c5ef88ffc1849cde0a8019f7593ed1eac731e361146577bb2ed6e0e71df5b853"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.4/kubo-v0.5.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19eb1ce59980c200e3e9819cb83a8545cf4c9b988e5f4ae6c6b2faf8c92eedc3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.4/kubo-v0.5.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41b1ee226a7bf195e2331b3de0bedb04b12ff41ff6324fd159c52ffb32bbb409"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
