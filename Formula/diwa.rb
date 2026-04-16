class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.1/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "37dd5fa599229d574898ea91285902861e201b0e3b4d2ffd6a777130353d5c38"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.1/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "57ae48ea21f7f427369f8250b3c81d0fd476a4b897763de5572e4b6d246fd60f"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.1/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "539a82a92ea60c8f6230460d7b049c845bbca3d31dc855bb6059a9b37251aebf"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.1/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15c4b6222e003d7012f80cac26c482e27de45459e64e6bc788b82bf543835b72"
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
