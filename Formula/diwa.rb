class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.2/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "8552dce89075e042b3eb75379a7512e158d69ab65dd02ca6b028c9740ebdc687"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.2/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "ee54ad1fc6266944e77ec014ebf4b99d08f7ab097b6caa173f5d7f6b9df339d2"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.2/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7604236073ac2bff86f520378ab36d686ae82425ba0229e0f82ead6cb0e7541b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.5.2/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "571af461d917f07de76227583dcb5bda41b465bc867eba08e3e3d8d9151aaac5"
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
