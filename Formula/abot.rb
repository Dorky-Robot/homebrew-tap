class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "bd15c98df31449b18ec238a43fec611684bb9f2d2d397c1b59f8941ef587d748"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "e3ac69974670b1ce92828ee8d73f388559b934cddf3e4a36d79100baf5115173"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2951dbebb4eb0b5071ed1d5f7c93f0fccdb9f1ae4f3dc6933dc0860004cd2d27"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2df3576b1ab75bf1e75e8838e86d6af30891f258853360d5b05c40e88623772a"
    end
  end

  def install
    bin.install "abot"
  end

  def caveats
    <<~EOS
      abot reads the ecosystem log at ~/Projects/ecosystem-log
      (clone Dorky-Robot/ecosystem-log there, or set ABOT_LOG).
      Begin with: abot orient <project>
    EOS
  end

  test do
    assert_match "orient", shell_output("#{bin}/abot --help")
  end
end
