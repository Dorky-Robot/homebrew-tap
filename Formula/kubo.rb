class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.14/kubo-v0.5.14-aarch64-apple-darwin.tar.gz"
      sha256 "9f211b70f13e8c3eee9bbdee09b424563b84c3afabdb1b721065e247518d09fa"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.14/kubo-v0.5.14-x86_64-apple-darwin.tar.gz"
      sha256 "93e5ff47126c2ccf8b1340d9b7cab0704f6b69b1d713e4616eb0edfd64627f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.14/kubo-v0.5.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09534f5b1397664a88a98095e6d3a5ecc02004f0253b7236c3469e9978ab8e2b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.14/kubo-v0.5.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb2a9faf1ab35ecfdd87dc88681e7581503385e7f12693bfaf7e36a40f41fcbc"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
