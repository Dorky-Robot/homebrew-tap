class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.23/kubo-v0.5.23-aarch64-apple-darwin.tar.gz"
      sha256 "d4c50e8641ce8a205865d2f8f3c7fbb2bcd6f04cb503dffb57edf4325239682b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.23/kubo-v0.5.23-x86_64-apple-darwin.tar.gz"
      sha256 "9a2532653b7b94ac02fc1f312d330498d76c900b52c11688a774f092af449c07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.23/kubo-v0.5.23-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c95046a84a4590e80076f4a56e318605d7c03ae771b27fad3e693e51dd013c48"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.23/kubo-v0.5.23-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78858143b01ffee7a15188468bcb25055cb41cfb326042479d42a1d50a54c231"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
