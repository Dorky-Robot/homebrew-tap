class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.3/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "3a4d3eba54b3fa6015e7204607208d3da5c241c4d557ef8c811cbd7be8c36210"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.3/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "04f17386af3d1ade7a44393c0a93e57c5dcf7a749e476078a2a05706014f3a3d"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.3/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0851b597620ed6d6576d07d5161c444059bf433a341c3b0896a83fe6d437e48a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.3/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94d8eb9210c394174d1fc77fa964ee3fa27522f662a679bfbf3a6fb6d64972d2"
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
