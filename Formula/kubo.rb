class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.1/kubo-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "42b1f0e53bc2e7b4df04e50f82d14a43396470c3265e1bafc5293eb715b45864"
    else
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.1/kubo-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "cc0460695542da9e5697d5c88278ed0aaa16d012a43f1d7217842a98e1a5904b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.1/kubo-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48a5e1b3cd232e2bdfda38d3ed2171107b264233f26cc7e38ac9d7e568d2a4a9"
    else
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.1/kubo-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15ef98200b3f2f49dd9e7426ad05a2338b33d16c16c6c7f92641d30cc7517bf7"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
