class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.5/kubo-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "641b3eeff9aaf2644046e534683c1c2de2d76ac6d59287f0a154073e6c448f08"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.5/kubo-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "c8db5ea4b163c4f6aac20fe2d18a4f75dc9cca8fb3ab1ddfbf63209711f706a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.5/kubo-v0.5.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0777127a71171a7eb12bd890b1af19d07f519529d4f2f42a4496401cd63971d6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.5/kubo-v0.5.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54afabbf053b0c1a2254ad0031a2916b27e4e94fedaeb91ccb0386aaf24061aa"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
