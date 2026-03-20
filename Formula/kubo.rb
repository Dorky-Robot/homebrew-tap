class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.7/kubo-v0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "51abf96d5b1f72c4afb08f96fb3a47c6164a3077a91cdeb931b52323752ca205"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.7/kubo-v0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "14208697e1a15a061ec73b41764999d59e9325ef9cb85bc22adadb0c6fa30e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.7/kubo-v0.5.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ee1b3cfdd2a3b3d4edcd0e996a8567771c37cab646f21217d62318b561a7060"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.7/kubo-v0.5.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e52b89ff1aded7e9f7883156e19a1fed9b0208800a571376d637fb4961bc5eec"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
