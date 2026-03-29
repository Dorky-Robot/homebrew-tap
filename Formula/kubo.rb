class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.19/kubo-v0.5.19-aarch64-apple-darwin.tar.gz"
      sha256 "fe57fe391b5c16a5b93ab4208632e109caff6fb3ff79e092f59f5614c2a5b50d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.19/kubo-v0.5.19-x86_64-apple-darwin.tar.gz"
      sha256 "b6a1eeaa690a53712f3c4a1c04aa9d85ee7c88e7cbd65509e59470307bb94ba9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.19/kubo-v0.5.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a000876091e817dec4a940597d82a06b01fd202c05242fa3db1b2f876783ff15"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.19/kubo-v0.5.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd373c8ca93fe7fc6baa87e69fbc45893b1f6266d3616e029a9697146248737b"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
