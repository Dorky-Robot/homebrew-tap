class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.3/kubo-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "2953d90fa71316d73a4c7541707fb52b79d4f3e2f064306e08d96160f0c3a3f3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.3/kubo-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "af8b7ab8bfbc22c3093eeba39b125f7d3de8390f84acaa6d040b0339edf6103d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.3/kubo-v0.3.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "678816a0f709be2641c6111f87384d33f06b80f4716a992625d4b6cbf40e5bd7"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.3/kubo-v0.3.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f81d3b5f7928e2924a658789c851db1980bb915edfcc2d479332b60909eb943c"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
