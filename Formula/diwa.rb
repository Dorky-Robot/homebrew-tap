class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.4/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "bc1d4337dc6cb4527860db61ce17d89317479a4db5c6334a1859dc5c83008528"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.4/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4e0771604852a757475fa9f1f9d3593a609ad145181e50642d93c786878836b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.4/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da9bcfcc3e18385f5904d279a75e3852878444b8fe27713636ffde04a4dc4e56"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
