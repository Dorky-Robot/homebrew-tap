class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.13/kubo-v0.5.13-aarch64-apple-darwin.tar.gz"
      sha256 "073d98cbd9b88c46d84570b3c4679119f01b65fc31fedb827fbd759a4cd1b188"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.13/kubo-v0.5.13-x86_64-apple-darwin.tar.gz"
      sha256 "6c4464a5d8108a7a9f81371868afd3c51a1c13fc92e4429713032dc3fd8e2027"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.13/kubo-v0.5.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ca6b9cca1176e3629f8368b554677d3d0099fc22b5e9ce37f66900edbd48b73"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.13/kubo-v0.5.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a77caea37f5a3d0d774d3cb22fe2199965768f9c1ad789ae9540d1d2e55ba1e"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
