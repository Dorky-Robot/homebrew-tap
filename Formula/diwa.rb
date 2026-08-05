class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.6/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "6df3dd5c3526f3b723db69698d2b520fabc82687b5d86a612f99d8a5daf30b0b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.6/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "e3130deb0c3ed2065ca7454914529391342582fb84c9637b3cdadce41a0b6f1f"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.6/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e568787086588309c5b21ecee206adb86f549a5402fb2909c23b870e545c13b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.6/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24e99ca0ae6dda81ef807ddb7945eaa746127699399ff2fa1b1f5a31a8a53943"
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
