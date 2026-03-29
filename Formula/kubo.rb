class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.17/kubo-v0.5.17-aarch64-apple-darwin.tar.gz"
      sha256 "57d78d15cee6dfbf43f3438c75f07c7bd9da837c0b4e1cab7f18ffdb1f93ce01"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.17/kubo-v0.5.17-x86_64-apple-darwin.tar.gz"
      sha256 "c926327ad66ae879bb6a60318cd8df8d9a9c9cd27464d1a23a6865ae45d6dae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.17/kubo-v0.5.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbfe839f7315c33156743c734ff89dc167bdd8b29f57b16b29fd5c49f27306d3"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.17/kubo-v0.5.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57262a41bb6df13cedbfb3c90657f503eab72d5148e003dddcb30fdd6f7489cd"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
