class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  url "https://github.com/Dorky-Robot/yelo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8acab7bf869b42e38c7e4413bbb9a1a8c8b423b1e7d284dc7659dba9cfffc28c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
    man1.install "doc/yelo.1"
  end

  test do
    system bin/"yelo", "help"
  end
end
