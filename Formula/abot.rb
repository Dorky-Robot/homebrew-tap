class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.1/abot-aarch64-apple-darwin.tar.gz"
      sha256 "d53f0f6cf812f3050308002f2b47786599fe70a0787237d804aa11a82d603c4f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.1/abot-x86_64-apple-darwin.tar.gz"
      sha256 "ff63cd4fe554d8a4c27bda89e1290e1542a9d23ae1e36d314f0a3c3bf3f852d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.1/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56bd9ad711857c77da43eb06c150db076713917a0b1250483ef9e56c5e79e6ee"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.1/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b91ee872637ea6c6d756a89f6ff108e968f7ff187b7f439a19bb6ce81a13d87d"
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
