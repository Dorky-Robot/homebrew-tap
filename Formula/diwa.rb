class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.7/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "b7a3891d1c74e45bb1876a0c9f5790fe1f110eaeb73159f8be712b07e7bc0a62"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.7/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "33a8b3d0dd5b8fdb4e7b2cb076392d4bf50699cd57245371c567781380f4ce59"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.7/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f85d1de89cceca7d3e62348076b65f8c6667a6577b2307b794f23ab3ef20098"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.7/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e3b8ffc593685f6144b97caa17577b37cf7985fea774289294604450cd20886"
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
