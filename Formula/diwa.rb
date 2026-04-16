class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.7/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "2268543778c70c198d6e17b2261e9177d6c2982c36698a6302422d825296a78a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.7/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "74dd96825999d7eeb3285907830ad513a47d68914ea23f44126ecb3bbd94d40c"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.7/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a91531752ad3ca8ffa6c8cf7fd754de2e0d3b8d2cae65ccfe55da700739a22d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.7/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4644439b80b0a611cc01501f631c055d591c27a065c8cf3ca1225204281c7d75"
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
