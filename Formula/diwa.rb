class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.1/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "b86bf93a3831a48d14e08a0fe4f9ba357ed6eadc4f91d2eb802f8a850ff5e9be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.1/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a8fc80c88be504bf53e38cd0ea325b9ca346e4d0290e364b86c489b4d52519f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.1/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66b5ec0439b45781c1503baeb718d6d971dd519e9eda43ab62d3abc020078f22"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
