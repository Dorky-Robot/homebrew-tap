class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.5/kubo-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "2d0c3254ab40b0383a0b9c7fbc2c5d4004d9edc1c20151e358a9127591f0424d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.5/kubo-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "18153de8974378cf9ac96fe54613955cec984cd95a90fe1f13081f81e2ac39df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.5/kubo-v0.3.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2a8a0fa279ab65a16c7f50adba10b94b0e597351c61eddf79e9483cd5fc6035"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.5/kubo-v0.3.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a97f241f23a949749107d79a3fb2324950227a4423b58ab815503be0a3714913"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
