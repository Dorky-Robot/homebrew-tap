class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.5/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "05645063123186a94050c733a126f06ae2187bc2ac69806093980ed0b5386975"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.5/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "35a3580a470e994d1825221a347f191d231d9816409db2ddb9908eb28d2ab73c"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.5/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fc9c2b11f591bbd03b6a63f3e00a373fd30160536614b7c1e4ec6b5b18f9fd5"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.5/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b56818afa594607c5af27b7d3d78cd9adf2fad4875be42766142e95a8bc010de"
    end
  end

  def install
    bin.install "diwa"
  end

  def caveats
    <<~EOS
      diwa upgrades auto-heal on first use: next time you run any
      `diwa` command, hooks in registered repos get rewritten and
      the background daemon is (re)loaded. No action needed.

      Fresh install? Run `diwa init` inside a git repo to get started.
    EOS
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
