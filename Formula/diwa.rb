class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.3/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "7457437287c01619f168e0e63cbb056cfa3378499d1cf991e3054a806ba5b1d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.3/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23ef404dafa59646158947723245ac096104f9b26307cbcdb9c7ef89ba0b4b31"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.3/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a58cc5d6484bda239576ad46e41d0a4185d79c6d7698120d69140b3bac1a0ea"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
