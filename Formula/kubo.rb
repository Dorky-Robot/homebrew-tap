class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.8/kubo-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "5c3cb12ba5fa182bc97860f62051e75ce12e4e755f68f237c96ca354f2564770"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.8/kubo-v0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "2747a97b7a3092007f1a161b35d7b36baf983c4fbaa91a240de0ddaabd85d42c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.8/kubo-v0.5.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cba33b55cfc2ba7a82f7b38e1ef7771a48bfe03b0b1b53059cdb6abef7afa5c4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.8/kubo-v0.5.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ffa3af4a29f4ac76f4f025b9910812d6796f43240540f0f73b2d023824f647b"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
