class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.16/kubo-v0.5.16-aarch64-apple-darwin.tar.gz"
      sha256 "927f0300e8446a5351affd0b9ae4f182a05883d81d17f34884e845310a8869b3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.16/kubo-v0.5.16-x86_64-apple-darwin.tar.gz"
      sha256 "017b0eceb7e0039bb46a1d9ca58175c5d0526b4356d078a4eb9fd94fa01f41a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.16/kubo-v0.5.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76eacd3f2064debd2dba74ec8534c39ed51e3be487225dfec6f83cd69468af09"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.16/kubo-v0.5.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f22f02282a2e353e4fe424684ef628d23caca35243392c3106a1152847804149"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
