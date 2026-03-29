class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.20/kubo-v0.5.20-aarch64-apple-darwin.tar.gz"
      sha256 "c0bb33bf09a44e0aa44f75a30d4ce696942ec4a837d059f6978dedfc82108226"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.20/kubo-v0.5.20-x86_64-apple-darwin.tar.gz"
      sha256 "c135be57c48b301e1a13f759065914552be1c8927ef7635bfbb5bbd0cf07c5e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.20/kubo-v0.5.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "acfbb2ed725f4ad67243ab6407c7ff500d41783f69415efe93a4d76cf94f1f80"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.20/kubo-v0.5.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cce8e9ebd2074d4c286be7bcec3d62ce55ab5e4c31af09e7b177d36d51909fcd"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
