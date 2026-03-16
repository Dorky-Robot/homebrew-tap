class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.1/kubo-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c1cd213857b62cb41d91c3896747bcb6150a1a045e12c4531a2a69ed1eff5f5"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.1/kubo-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "84b0f14d544ccf428fa9f1c857aed851dcd641daf3217a716236e1c3157b27b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.1/kubo-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a35b5e9fbf3a5db4207de80fe6a2fc05ae8d27c2fb2938ce3b565ade7c7b928"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.1/kubo-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a5a8039209ad978bc9e37b6964faf5f2cf116b84eb95c94cc6c187b536a8b5b"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
