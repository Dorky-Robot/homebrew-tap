class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.25/kubo-v0.5.25-aarch64-apple-darwin.tar.gz"
      sha256 "911658f81841143baec93094f5695a7e61e56bdedbdf290fe72b46337f82d331"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.25/kubo-v0.5.25-x86_64-apple-darwin.tar.gz"
      sha256 "f212bcd4bc3bfb0db8215b1f4c351734246a36beaae22c7626ff7787a92e7262"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.25/kubo-v0.5.25-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8a04406b698119fcfedfc0b6149037ddb1c2485a65db49f33904dcd4474d26c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.25/kubo-v0.5.25-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72bbba866268b7022758374755ffdedfa681bbdb3e1b89941afa8a2355b5ad87"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
