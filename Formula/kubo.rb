class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.2/kubo-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "c68e17a46f0ba7e80e96ec5246e3023d24a616fc2d4fa38cacc8aad9361b1657"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.2/kubo-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "829010112753f7f24e90f95d8d638142216a09acc0aa5d7598edd1f60b8dc9c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.2/kubo-v0.5.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1eb7c4e1dc2a717cb574bcba347f6d00e6a2e5dd9890e371059f0ebd20c10629"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.2/kubo-v0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e06a4fe9bf99240c71d54755f5782dc4cf5253477fac943235627419e2f3425f"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
