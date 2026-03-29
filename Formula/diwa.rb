class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.3/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "f5fd644005e66ff023a0ec2496f94e271ce329f0710726b360ef85d4ed2f9f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.3/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27b38d4de2f3087959b393e4ee1de40b48b2e7a15c8cf090ac94b1b45ca22186"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.3/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "075badcee80a30ee8c2ecc4c35abca1bfaebbc753a66d5eacf6204dcc1ef1fcc"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
