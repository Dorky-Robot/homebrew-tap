class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.2/abot-aarch64-apple-darwin.tar.gz"
      sha256 "f990c62d0157b5e06b55a0b5e429bbb75f4dea23ad66107352828ae1b7ebe974"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.2/abot-x86_64-apple-darwin.tar.gz"
      sha256 "cd95adea64d7ef2be46aee1cbb991ec167d5e1cff68bf892f3ecf8c359ea3e93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.2/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9782542f86d1b737c5426cd53c2254a8d2cf7c06cb3b5464485b9f8cad6ee04f"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.2/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957b7c0faf71a1d280e5f009c05b17d4c6efdcb0bf9f17b93107b9b29b870fae"
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
