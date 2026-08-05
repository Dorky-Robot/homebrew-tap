class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.12/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "5f88421a38a05e3df7940f713893fe986f7ab7c43d2113619aef6b3a8e9a4cd8"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.12/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "b7164015b9be9f9c3bdbdb3134188d274fdf592ddd6535261f2911262a086e83"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.12/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffe5afba97a4b90fbdee6f2e7ebdb1a4259c014bf09cc184d9a355882aaeeefd"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.12/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fad58106684d113658d91e9bb7b0e3165870a1f124ec2f3e810d8760ec533e13"
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
