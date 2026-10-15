class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.1/abot-aarch64-apple-darwin.tar.gz"
      sha256 "aa76d0184ee76867c113a0fdcfca60764b1b0bbbcfc1c2abf397db20854363dc"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.1/abot-x86_64-apple-darwin.tar.gz"
      sha256 "cb9b63acb614ce69e3b169d22a31c9b19866042c431e7eb063a66a3e1acb2971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.1/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc5861df960c750606f1b907fa1a2dc040db397e07ef3892007146cb2def424e"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.1/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6874ebae5a422d0c2f16253d71b2fc6fda4b714c6c19c3d416d4a809631727f7"
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
