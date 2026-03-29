class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.2/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "d1c6f265efaa9a0007d9f15b10d7b6224f12a86ea31161978db245e748e6210d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.2/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9971ca1628a163973bc06c464fabe7e2b183a5e40819137fc18d10ffc82f7969"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.2/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c9e95fbb58be925b5c4a289ed239735ff9c6aa8815a7be0809f4ec844c01ae3"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
