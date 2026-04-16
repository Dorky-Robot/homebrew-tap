class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.8/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "6030315222254049eceaa1fb1815702290e84e9b6f1f3943d9b0a7801a6bd9e0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.8/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "759ac52ffc64df72d270b9292fb0e0a2781c9ef3db15a877f2074c422868db88"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.8/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18d26f6b7d1fea64f04f7bfc1643985cc4b7d31ea75e8c267f5ee5e9e3faae49"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.8/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b702d6d7a1ffea62999b400c8cac4ff0e18bd97b0355cb616d2e42d501601d78"
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
