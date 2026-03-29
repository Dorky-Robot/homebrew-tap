class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.0/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "3e710694ad30796ba6506617c60b5a499d4fcccdd55c58cf60af2e0791f9e272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.0/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bef5c41f1901de0851ea5d8ffd5ee46acbc1c6f0528e8e31c168086d220ff14"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.0/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63ac7507ae7684092ad964fe66d897c775837ab775af9b6f899dcb727adea273"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
