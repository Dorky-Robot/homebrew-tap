class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.9/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "d796977b1f8f287e8ba2f7a0bb4708a3b3c4cc33b1cbd0f48353c6290bebf489"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.9/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "c845cd93fcc6738316411bc817b4c7fde2c9af07974fd6eca290214410724360"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.9/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "082690fe7495ba6df48e4be31f8705d5efc545d08cb0f33bc142bcc9ff73350a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.9/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddb252b0e24cd6f83a59097191fb9f1a7c804992e1064915f961907e624ac8bf"
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
