class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.4/kubo-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "be501ae2ab78167cc5f6429197f5fc32ac87a1f855a19678f693a3c9f6bf09f4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.4/kubo-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "32d25e99b0a888ea8a66fd8a4a2e1694c06365d9ca42645221442645f6c01665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.4/kubo-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c642796f3901257b2eafb8d2018297c54f9f4f130415eb0643e51a4f94c6777"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.2.4/kubo-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "221cbc5f6e4e66671e512daa231832721bee265aec8f1b25aabb594aa3c41193"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
