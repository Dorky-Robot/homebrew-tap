class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  url "https://github.com/Dorky-Robot/yelo/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "873e6e86bbfdaeb576b40f31335e86a1b1c8d20a5aac665298328ce912f76a12"
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
