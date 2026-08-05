class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.11/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "2a7f0dc74d92278004e78d9b248168d8ec7a318435d55814a9fde4150902e26e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.11/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "0a06e7b8e47110350d14b4d9d33af39d71ec72e9115f2d00d6e9443d61afe9be"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.11/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d55d983ba63df943ebc9b7b5dd8e21ea5cff594eb716c3f035f005b9dec542db"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.11/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "209dede67f3f033aadd0f83777970140ef00287b64d1c8c8934e3553a72bcc8d"
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
