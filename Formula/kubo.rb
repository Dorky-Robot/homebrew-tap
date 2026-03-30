class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.22/kubo-v0.5.22-aarch64-apple-darwin.tar.gz"
      sha256 "f2ae5e97cc0917aeeb8c7a0be3944249768fc58ed2fc361a5c1f89db16119386"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.22/kubo-v0.5.22-x86_64-apple-darwin.tar.gz"
      sha256 "15eee72c21ee7c706b1b3ec530d668cdfed138bb11fe30b4f66f4c5c94fbc845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.22/kubo-v0.5.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0612025d5c86cd207f3551810a07e67867c3fd07f8fd077d67fdcd60b19d0497"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.22/kubo-v0.5.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba62ee917fa4cfcee554cce7104c0ca6f7ab73c962101010a99a1d8a12caaabb"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
