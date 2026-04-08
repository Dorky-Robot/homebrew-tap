class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.27/kubo-v0.5.27-aarch64-apple-darwin.tar.gz"
      sha256 "a94472af841abeb44812ff0615b2118637c7bb20a319c3f36169d87a5ec144b8"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.27/kubo-v0.5.27-x86_64-apple-darwin.tar.gz"
      sha256 "26148ba0d1429269e7050eb92ff361c8ef955c639e926e92bec33d0a8cbd0f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.27/kubo-v0.5.27-aarch64-unknown-linux-musl.tar.gz"
      sha256 "12da7f73c9885d8187f7c0460133c635b2cfec9f6dd86073f26f229b225ee060"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.27/kubo-v0.5.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce5fc90a40d4e3a341eab8fe056a61a249144bdcc03fc521b25d282be76e481d"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
