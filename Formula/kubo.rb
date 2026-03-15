class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.6/kubo-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "acd8399514d7041275097380dda0498d21687adc84bcc25cdbfd337c06550d91"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.6/kubo-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "0351f826e1d8708eafb5d746422c85e09d30e7bee6877cce6aa1d8bbcb8a1f5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.6/kubo-v0.2.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f487019c5bfb78ef3b592d892ee2dd437047afc5cafc1ea017dacbe08c99b17a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.6/kubo-v0.2.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b585231f2fa2b2e691ebaf4c247419d37050f928d1d2a8840d306264ff73866"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
