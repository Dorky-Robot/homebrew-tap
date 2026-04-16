class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.0/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "c05c570935cea645ce9452f037dbb5b0713622d750022b7e51cf7beca67d9756"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.0/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "e002730c2ba1956784197ff0f1f20a9e21132934b29cb2a6e434cfcc7c2c4275"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.0/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3c6e0d25f23e4cbf9b4bd3f3069e3104dc44cb6b0c4ba43f05a6348dc930921"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.0/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74bf7e8cb3a5e5f5a670d61db73e631997832fd6d62b2ad1461a1672892b4169"
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
