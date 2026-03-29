class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.2.0/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "df3fecf0e2350212e4cb565375aa20ea89683354e6381ae38f0148fd03205451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.2.0/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5667bdf13dfa57e761187120c735b68b148f46c6dd8975a27a36b12bead9601"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.2.0/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4416e1462ed594a14aa6fdf1948f905d0a82ae39ad1ae046c09cceee36ffa48c"
    end
  end

  def install
    bin.install "diwa"
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
