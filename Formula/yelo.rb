class Yelo < Formula
  desc "FTP-style CLI and TUI for Amazon S3 and Glacier"
  homepage "https://github.com/Dorky-Robot/yelo"
  url "https://github.com/Dorky-Robot/yelo/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "133de59561e5bd1c7a56dac66df64122489f19c0a7653adf0f13480299c093f8"
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
