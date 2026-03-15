class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.3/kubo-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "999130bfcad9d4a4f4a7f46f13f666e98194c865c177ef61e23725c8ea6d84fb"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.3/kubo-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "f77c72e83466d8a63793f250fc3d5dd9435d8b74e86491c2a831a6e7abeaab27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.3/kubo-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "544e79b6f4fa895c93488cc85408c77d32f9aab396f47d678377865c88a0182e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.3/kubo-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7f3483526aae4887c7dc827750519baa926e61ae7ca8356a5d1208e8d822ab3"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
