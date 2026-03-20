class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.9/kubo-v0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "5daf2d39940ac9cd98fce06cdebe37886dafede377abb7cda5910ee74673c871"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.9/kubo-v0.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "0c57735918add8b1a261742a90ce61e946aef58be9cce2b2b3df033a1bfda5d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.9/kubo-v0.5.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "095ee18b6dce41d9e286513780f62ab7a2e243cdd6d09cded3695241aa6213af"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.9/kubo-v0.5.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee31fa9d367b5fff448739a3656c94d4948fc4405345c4340515d7daa45f684e"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
