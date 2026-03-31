class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.24/kubo-v0.5.24-aarch64-apple-darwin.tar.gz"
      sha256 "f2a44b79c458ac21ff8b68618e280cae70e09e0ac6e6b837ac9d4d5ec1098316"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.24/kubo-v0.5.24-x86_64-apple-darwin.tar.gz"
      sha256 "4a36025d24d2ca48feea2dfcb6a5cd2e60a4a20f889ffc0ce4cae77f9b56550b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.24/kubo-v0.5.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "595f5259a206f4e0586eba8be6d6ea6249b9718448a2d917dcf2e8f5f65734b6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.24/kubo-v0.5.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b7eb919276eee7ce811bc259d9533aef592ee62005617e11d198b7f9edf48e8"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
