class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.2/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "f3c331d7a2a63e60865d0b86bf10a85ae6879eff1b23ae4375308ba148c8464e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.2/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e7b1d344b8e104f86b27ae8da1dd2bafb0b29e50e993c0fbf1b278db459200c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.1.2/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d07a172909d43cb3259e48b9758b009387a03b8b4a0253c1e34160986d7c2b5"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
