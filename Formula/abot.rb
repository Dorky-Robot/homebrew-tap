class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.5.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "0e5756b03554f9e53bf140325b5dc821fb04df8816e23f732d4484082b960a95"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.5.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "3daa4ff4a6d080f6454ca7c969ad68904467aacf0ac0f18042f7939d58d6aed8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.5.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eee533e3ae6aadd6c12f69893b9c92b151c1ff9af3a04e9a250c5bddd8d05861"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.5.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "019caefa055df246d1da32dbbfbe4f8a91699de095714b9d0dcb3ae2cdcec5d9"
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
