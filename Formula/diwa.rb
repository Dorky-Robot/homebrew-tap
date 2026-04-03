class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.5/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "a8f039ff6ec921177b1f17ee85b57aff897279bf828f07f4807bfabf6feaa3fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.5/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a1ab9b3c0890a8bb48835e1d6921799020834ed60ac279b97fc2a15cba0bad3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.5/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd1e1142b9139eabb56b115a6ffc204d7214a958b43aeeb240345d0153e361ca"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
