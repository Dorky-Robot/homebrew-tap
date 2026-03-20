class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.6/kubo-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "1da1aca129e4f2268364e7a3ca46ac940ef2dbcb54bca9d4fd4e78e8df885133"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.6/kubo-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "6e184ba519a6da40bf0cfd9232e20d025655b6aae5d7ac41b12f35f4f006c489"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.6/kubo-v0.5.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c67f1c53a027872a10172fe2df688263ca9e9217f8c10a82cb53ea12c432ddf"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.6/kubo-v0.5.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2cfa523d0aaa6f74b6c2a061a29bab6bb9bc458b2a65adf457110736372d530"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
