class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  url "https://github.com/Dorky-Robot/yelo/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a1510bd1ef9b0e42b97990ec6d0d29b7d185325c4755ff097c005ce59dc96770"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/dorkyrobot/yelo/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
    man1.install "doc/yelo.1"
  end

  test do
    assert_match "yelo #{version}", shell_output("#{bin}/yelo -v")
  end
end
