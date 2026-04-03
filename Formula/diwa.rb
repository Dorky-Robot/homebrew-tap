class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.6/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "e12a48e99b3271d01eed202a9b235db3cfabdc85b564cbd486961e3fe05bf116"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.6/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed787cde9d34ff4d23e597d19a3c90aa25803b80e44ea35b7d5aac5d6f8be6da"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.6/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d03385db1bd3e056af3266864b9d311cc3988ff04a647e39d0c922eef778daea"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
