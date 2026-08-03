class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.4/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "b87324c6d5ed90d1146590251877867f9cab51345d6d81d692ce2df101431448"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.4/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "8be4c0b9b28782a2ce42f7a7eb616d383abd58d218871b41c3b5d4d415610edc"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.4/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "652b304c6ccc4447f49f7a8ff5b4a854247b478c823c16038de97e99e7144df0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.4/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c44d744f7c37367bfa99b15e70541c839e78a06fcd9bed2292a5d8f8e3f42e11"
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
