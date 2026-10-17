class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.3/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "1b342e6f459c4eeaba58eda1273da13e2e3bad27e5b7d2e43b72c72a418d3214"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.3/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "d567434bd91cde3203e0b1f96433c96b6e7653773fdeef2b601bb28fcf391449"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.3/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab80678faa42dfadf9ce7cb2c41ce05d61ca978a34e46540e83d995b302eb783"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.3/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d153e822843cfa7da79efeedefeafdc0eb99da154b366e7e1eaf45c84ec288b0"
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
