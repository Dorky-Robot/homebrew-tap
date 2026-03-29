class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.18/kubo-v0.5.18-aarch64-apple-darwin.tar.gz"
      sha256 "828f3addaf99ae59fa41dd899230d01f89e26a150137d88e6f0cb3df59d2b6b7"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.18/kubo-v0.5.18-x86_64-apple-darwin.tar.gz"
      sha256 "d846d56ea638b26359ead8c5c31af1952bda99b50ee67c845148e5d7b4952a0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.18/kubo-v0.5.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a12c9141d13f75117c41ec62078afa0efacd6d7c5d8405e6465d327e163b5f01"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.18/kubo-v0.5.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91d456117d23364051eb17ab4ef262b0edb449bd4937f4fd2ec4be3a7336ed0e"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
