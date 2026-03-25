class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "667b42ac30d4d1c742a646a6d24f6d5483315eba1e68c612b8863d82264ed900"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-x86_64-apple-darwin.tar.gz"
      sha256 "a42e64b6ea9008b46656a94d014376c136a77c1410ae5711802eeed5616c283e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6d37593e026e18d5418b1f9c593ae7b615aac8a4f09616b7c0cbed879d2a7b9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42a86865ff009fda41e12eeaec12ad7b7c328d6a5b5f540b8efac7fd9fe5aea5"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
