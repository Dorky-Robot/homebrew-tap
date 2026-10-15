class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.1/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "cc12cd6b51f32bb1f3315f4c25469050dad0fb8638e5a04d604e1fb722dceaf0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.1/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "34045221b3617c7f689ae0fde8c220a05c53b2a3df90073dac7b85747044d61e"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.1/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "604e4542a70082bbe5a84eb49251c57881bfd085ed66c3e834ebd5ba7c6dacd6"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.1/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "399c33b6bdce825f59f716dfb0728a9552a731d408f5ba1ef95ca22d09f57ac1"
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
