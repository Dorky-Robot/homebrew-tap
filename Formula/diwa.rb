class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.1/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "cda7b57bc2cc8e3335d6719aad16950a64e1ba355ad9415193ade2439008465e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.1/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "2ee3891e74d733f3e3207a4fcf6a79646ac050b4e4f891cf477495a5e308b249"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.1/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61357b8ea7c2024cc0415f9ec79f60383fef93ba0c5dc54f71377c9bc891f3f2"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.1/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b538e0496187741bde37787970207f49b6d9e4b8b4960c8af7671e0a162aa397"
    end
  end

  def install
    bin.install "diwa"
  end

  def post_install
    # Seamlessly move existing users onto the daemon-based indexing
    # model: rewrites hooks in every registered repo and loads the
    # launchd agent. Idempotent and does not touch indexed data.
    # Failures are logged but don't block install — auto-migrate on
    # next `diwa` invocation catches anything that slips through.
    system bin/"diwa", "migrate"
  rescue StandardError => e
    opoo "diwa migrate failed (#{e.message}); run `diwa migrate` manually."
  end

  test do
    assert_match "diwa", shell_output("#{bin}/diwa --help")
  end
end
