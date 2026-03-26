class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "46d41d0e7fa8b4d9249e19008c175ec840d26a172f96eeb662ce00485ed1d364"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-x86_64-apple-darwin.tar.gz"
      sha256 "f3569ac69595a30d59471cdaa6b58b7de9cd582258415ea95699e8464220e590"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56ba33e77284153768c3baa933c39d43c017c65c23ef941a0a2135154a4a0aec"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.10/kubo-v0.5.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "460e9aabe78616fcbc69b91f95a0410e64c27fb4036978747d6289f16634c3d2"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
