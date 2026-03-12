class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  url "https://github.com/Dorky-Robot/yelo/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "74099efceacd697d8a420f1316b7c4cc7df08196f8b8e8a33681933a9c56ed65"
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
