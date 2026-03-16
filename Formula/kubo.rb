class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.2/kubo-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "2c421f42c4c963fac8dc3d3315e2b2a47ed6874900148a27cf3c71c99669eb5d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.2/kubo-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "a50a65bfad5fe71c62e62040ea5f01d1890124b5f80b7229228c9a28808685e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.2/kubo-v0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abb596d3a4c5d295265dbb202f83444f89c88e7abec8a514dce7868a6a653021"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.2/kubo-v0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16d870e827f667f2248f28bcb30405d364338eb1f6e4a30090442e3aee2f7a4f"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
