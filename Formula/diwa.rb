class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.0/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "424996c66302c3ac2c53c8d395e695ac1f977ef15a43da9ed39e8aa2b197b300"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.0/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "0d144573ddf14b4773a6cac488f0d4fff857f95046967e1d15aa773043f058a5"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.0/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "681099db153e45face716cbafc66ab7800b70e673e4426459af98b3b246a788a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.0/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2f1e1a5fa2f03945a16c47466d08866e600d9bbb67abd8e309d7b314210d17f"
    end
  end

  def install
    bin.install "diwa"
  end

  def caveats
    <<~EOS
      Index repos on this machine:   diwa add org/name && diwa daemon install
      Or use a store on another one:  diwa remote set <ssh-host>
    EOS
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
