class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.7.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "cc9c614d18be070644ce1597264dd2bd1c0cd9d3c992a51dfee88aab325a0eda"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.7.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "cd0140c712514e5dadbd17468e6791b4328d8a1ac2219aa8fe72e96e05024920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.7.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d093f4d51e84cb97e062b489d6667d5892dc9aaee6c2935832eade0149d90c8a"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.7.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f6dfca3c31fd6a5c235be0bb32974e3d8ae911c40fdee41a3027d99dff27f5b"
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
