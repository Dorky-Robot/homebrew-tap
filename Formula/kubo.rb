class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.15/kubo-v0.5.15-aarch64-apple-darwin.tar.gz"
      sha256 "4282a04a1ed8b72111a6ea8e670b93de7e4475bf2c7202e86a71fcbd1a2633a9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.15/kubo-v0.5.15-x86_64-apple-darwin.tar.gz"
      sha256 "97ccf784017acc5b2d273b46a8a9d8d62fde1c44667f7aa1ae35071bd4cac2f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.15/kubo-v0.5.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1470cc2d8124f9c8f856ad7b4eb036e62adb76a7518a4c9eb568c46f10ebd0f7"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.15/kubo-v0.5.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e72bcf0df80fc427bd86c890e01bcd09ef463b37079c2729f89631ea406d79b6"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
