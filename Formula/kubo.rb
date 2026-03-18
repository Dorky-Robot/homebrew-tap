class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.4.0/kubo-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6912e3c732e1f82b5227f0410b2243052eb2ade88395496c60144b628ce7102"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.4.0/kubo-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "28b26937438aad2e82b7674842e32910f0ce6a245602a0e83bed193ac097d305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.4.0/kubo-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f122a4f12263f52f968d75b98c1ce58501f9a1430f5b8c962204a1a0311784d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.4.0/kubo-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26fc6bcb4803887de54e095bb1f3b04bedd6da65dd17488647007c54e7dfe920"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
