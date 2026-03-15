class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.2/kubo-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "3b5578a849ca9efc172a2014ccd51b00b6d00ff9d598b25b6546044a6617a50c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.2/kubo-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e5d92225a6fc7f6bea90a9c1e6865c3e5aaa15342f5bedf938854bf873b66704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.2/kubo-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9c1a49cf1dae325305e55e14b80e5eeff133437b89807169f7e476b124d7e77"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.2/kubo-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9553bafa1b49e44f4ae08d6a384d73a9da5ad9e985bb56f0de66c6e05a266f06"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
