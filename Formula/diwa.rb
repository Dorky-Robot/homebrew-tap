class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.5/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "41b1394610449ee3a4a893f51adc7e8e2d03df5813a9c4af933c11d1e0d17866"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.5/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "438b515ac6a342b39ae56b9c38c532b8cb9bf91ffb7ba263b7316de0ecc6ea6a"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.5/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a782400bc65483654fa076daae7e63abdd5b09d03efc9f9144701898a1c8d3c1"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.5/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "729b9132e98e8c636e5ee189e45f3109dc9090f569985d467a215f44d515aa09"
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
