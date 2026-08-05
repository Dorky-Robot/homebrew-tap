class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.10/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "1aa93a15126c795de512fe6a95366f019dd701b77e06b2e917b929fa788f9081"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.10/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "d90ec4a81f652f2693f27249ee01904de16a31854aa6a5d97ecba0003abc3506"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.10/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38931ef8bc75d880e7e813f4786a5a22a56b59030200fe8f6c144ceace1dca4f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.10/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8db6e81da01dcf65b237d88f342747494609214984a38253a4a13a7610ff5554"
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
