class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.21/kubo-v0.5.21-aarch64-apple-darwin.tar.gz"
      sha256 "8909e9fc27e0f244ae152760705fb7380810701f36e149ca3a747f4625f0d903"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.21/kubo-v0.5.21-x86_64-apple-darwin.tar.gz"
      sha256 "aee83c18bea6ca6e67883196a5d9079e0455c595a378f5dc8eda5d4f7d85170c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.21/kubo-v0.5.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "78b8e95522a6e4a2f432f4bbadc4db36c62f812c61ed73b989817505d6823948"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.21/kubo-v0.5.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9b5d9be605d0d91400ac710f08ebab36a0c253e940dd7b17c3b80ea1fcdbded"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
