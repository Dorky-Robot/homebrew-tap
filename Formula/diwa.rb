class Diwa < Formula
  desc "Semantic git history index — the deeper meaning behind your codebase"
  homepage "https://github.com/Dorky-Robot/diwa"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.5/diwa-aarch64-apple-darwin.tar.gz"
      sha256 "7a01c39827238acad87278e70550188c644cb24f70cc1de6e8971bdcac518ae9"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.5/diwa-x86_64-apple-darwin.tar.gz"
      sha256 "5e44138c2b26ed8f95d1cb4f23b68deacae797ccd2e1721144259d074f056224"
      # Built with load-dynamic so ort-sys doesn't need a prebuilt.
      # Binary loads libonnxruntime.dylib from /usr/local/lib.
      depends_on "onnxruntime"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.5/diwa-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bdc2669d8c08df5d9eeb952e658368f1ec1ceef6170e514a49141fd3418f78e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/diwa/releases/download/v0.6.5/diwa-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1071342f1a554ad50101c02eb0499a5bbd44efcf1b791cdc2da5245f61c523a"
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
