class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.1/kubo-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "1e9b96dc02e82d087ff3d962717437f9e2a16ca4a765ef5dc1af786512285c77"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.1/kubo-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "9b564dd866ca9e76721cd820a8649d7ef978981addbc372e326e8946261846bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.1/kubo-v0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b564cf5b7314dc93c738fd8561d3f4fda9e31c5c9fcbc5c6fb2dcfcdcff3966a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.1/kubo-v0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7acb468210e73642618f83e714911692fe96df504269847c499ae46ec7b97bf1"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
