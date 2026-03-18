class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "f97773989682efae9b5a12bac9cb610f5d6846f56bf0297231ef378d37164bd4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "79f570f020d20055d074a7e0127420c9ee9344dcba9d3656cbb0eeeaade14f8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97f13bdc16f8a90d54d92b5fcb515b620c980d9feda94128fcc0c42950fe09ec"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/kubo/releases/download/v0.5.0/kubo-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bf2e3f4fb2615dc6faf5cba1ef9e87b10899e89d1748367ea947426eda2e75d"
    end
  end

  def install
    bin.install "kubo"
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
