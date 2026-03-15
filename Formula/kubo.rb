class Kubo < Formula
  desc "Isolated dev environments in Docker"
  homepage "https://github.com/Dorky-Robot/kubo"
  url "https://github.com/Dorky-Robot/kubo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0d541b98669489b891dfd2d6786e295ec0c144e0482598dedeec0f444725fede"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "docker" => :optional

  def install
    system "cargo", "install", "--path", "crates/kubo-cli", "--root", prefix
  end

  test do
    system "#{bin}/kubo", "version"
  end
end
