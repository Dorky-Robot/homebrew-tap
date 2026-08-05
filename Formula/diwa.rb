class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.8/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "ee51dc33d54a9bfc926f928fd999622bfbd370f5cb4ea85aa37131185f5a22d2"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.8/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "611a44f5db36d95c700463941659d472ca0297a5d93f963c8e322153a8e59b97"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.8/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "789d5ae3b37b15436fc2145d186096c8ce7a02a6e5721b986794c0f2d8f1d1b2"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.8/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26159e6d7c38a89aa131babe1e9c9ef89aee8dc02d3a7aa540c8f4b38b7566a4"
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
