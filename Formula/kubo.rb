class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.0/kubo-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c44734e3cdcfd91e55d2b881e59f21a69ba4569f8e650a5b5ea9d74396f5be4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.0/kubo-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1eb321bd34b72a1ddc85b81b7b383b51e47075a9b5e9a4df4e489a8b3a940225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.0/kubo-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e93aab2522a5c0c5c5e33ed8d7617316c29dd4cf696c67644d600ca0fc9d738d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.3.0/kubo-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3246b95f12b0785bffc0a069314e9289352981deea6c99c6e44f9b2ea65d8978"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
