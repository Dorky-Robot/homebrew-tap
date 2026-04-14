class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.2/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "f9130f890e9a272c77af760bc372d884ac241393cbc20c14fc0d9760b03ff936"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.2/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "ec6f78c64f47b2d6cceb83316a9a715e1d42308845234a85a076e0137df2dbb6"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.2/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c46ab01ce25e5510412b819001dc00c780fe44b7d9201b3f5e4e5c614a347014"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.2/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "528a4541fc601b97b49f15131751e938455262ad09fddfd3dedcafc66f517bcc"
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
