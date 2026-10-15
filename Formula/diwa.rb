class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.2/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "bf790852e4d1510aeb28cd87ad8668e96772605869ddddfaa655a2c0088a9be0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.2/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "4af7bb6bb94bbd916e6243f94f5abb1e0d67e5cd2980dc8186a9dab039741bfb"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.2/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "256962dff1d8af275de57892f54b0d76a5081937a94f5d470396d098f04c3be4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.2/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47eb2968a1c54951cbbea8ca109c8fdfc1c503e2b730c9d13df2ec940a675034"
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
