class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.4.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "400a67409f4f7b09c2cc57c3430415cbf718c6888afa00d935199a59df736503"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.4.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "7baa00b47bc1dbb8a4973e656241347292634253a87e0c45f98a0768bc291398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.4.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b87b7af9d137f0cf47b3e642d13eb70d20ce9bb126d68f76b16f05ff4d9d6041"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.4.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "238300028a94166e3e3240190e3111824a5f4d4e369aaad556c17e8cb363b872"
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
