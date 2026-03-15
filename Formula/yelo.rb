class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/yelo/releases/download/v0.6.0/yelo-aarch64-apple-darwin.tar.gz"
      sha256 "111a5fac4af3e9720a52cf43e21cef9f917d71c84dc5f0d138e69606b28dec54"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/yelo/releases/download/v0.6.0/yelo-x86_64-apple-darwin.tar.gz"
      sha256 "c6ef2a90bb0dedc94a2846a2fd06a6a2812fe456148819c199972f799bbee94d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/yelo/releases/download/v0.6.0/yelo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bede6e8260cdffbf4253581f88c0f7e3796ab5adf40d9d7e3b7bf6d82b04ddce"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/yelo/releases/download/v0.6.0/yelo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16ab3e517975eb8dee8c44ce3f0ee7b9cff432061f4176c1164aca0add875154"
    end
  end

  def install
    bin.install "yelo"
  end

  test do
    assert_match "yelo", shell_output("#{bin}/yelo --help")
  end
end
