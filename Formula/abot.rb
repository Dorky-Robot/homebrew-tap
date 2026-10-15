class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.1/abot-aarch64-apple-darwin.tar.gz"
      sha256 "48afc15b9d3f43673fb4fe03e3fda1ece4747c8bf26cb07ab3caa18bd196551e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.1/abot-x86_64-apple-darwin.tar.gz"
      sha256 "6e8abbe031392298a8fdfa9ff8d8a83deb250cf58111931f22e83b963a24b0e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.1/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b30fe3feddfda71250c92fec97e9f315e9cf9d65e8f77550ab5c59c6bb225951"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.1/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c22fed60fe154c43bc6943ab91f25cd23f97b93649618437620fdce4e0c9664"
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
