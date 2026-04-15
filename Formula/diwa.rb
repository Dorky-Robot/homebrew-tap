class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.3/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "33fa2ed09971bf25ec3ed477d84e2b9e25dc66e40a955201b3aa929fef2c81e2"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.3/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "79d7120017d12a605785a7cb106b97d4b5887f7d9164bb9e43a93ddfd159ed9c"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.3/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fa76788030e8cea223f8575ca44c00ceed22c0136eb981902504073a2619426"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.3/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d6f5438faa7701251c2f233cc9aeccabfe4cc404a697130e79260bd21c4f69b"
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
