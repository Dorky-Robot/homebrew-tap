class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.11/kubo-v0.5.11-aarch64-apple-darwin.tar.gz"
      sha256 "4aeac26ee43df405e8faeff76644f714bbb9e4f9aee5b30fda2a8dd93e4a79d4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.11/kubo-v0.5.11-x86_64-apple-darwin.tar.gz"
      sha256 "e76d454c0b87d3d015f00fd8d6b0fba35f7963520db644a3892da3ab0e1a8b96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.11/kubo-v0.5.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0560910b3828d66d74b19beb572ff7401d91181bb85e25b3eb04704c4ae89af6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.11/kubo-v0.5.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8260797f903850588d696845b4805ea08ef6b38a9966685a27eee3532d14f560"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
