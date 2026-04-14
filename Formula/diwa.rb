class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.0/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "7bf0e4a83d4fb49baa9ba16d718896169f7695f0b40b0a415006cc6df18e5415"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.0/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de6e70759363f32837db3dbb29b721883ccef41a4b0a45f6bc3795ed083fa91b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.4.0/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f68661aa0dc4499a0e0296eac65363850eeced9e7fbdb5dac10009b397783d33"
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
