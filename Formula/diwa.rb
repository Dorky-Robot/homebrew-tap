class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.1/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "0853d4f2512594213da7abb5865e95f7553798013b8f1b4467523ebbdbb4640d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.1/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "475a31393666890f8a1ef4aeb49c03a415cd512ca764af2778bcb5e489f50b0b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.3.1/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eee96d57c4198c943ab54c7eb988fd4b4a0c19244ede692416f1ec7e2171bff7"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
