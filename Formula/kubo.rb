class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.26/kubo-v0.5.26-aarch64-apple-darwin.tar.gz"
      sha256 "e44b28d8cef2fbd7e379e1788ed6dc5483b9ee7f37a55836aa820f0f148d45cf"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.26/kubo-v0.5.26-x86_64-apple-darwin.tar.gz"
      sha256 "9ecef226b017914970967dfa6c398dcad748d2fee2dc8487e35b71804d5e1977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.26/kubo-v0.5.26-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdedfa380806efa7c29c6ceb5a0bdcb910e5cdfc54cb9fb8ef0c7960f2d48e0b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.26/kubo-v0.5.26-x86_64-unknown-linux-musl.tar.gz"
      sha256 "604c85f9f18e119b864c935971d1d03de8a09c0fa612a63410c81e609d4e1bef"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
