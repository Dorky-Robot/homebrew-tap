class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "ad309437a3eee8e473588918e041cc3237f1df079d781609bc43c1c8db23222c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "269f491f537494843885191d4b4ecc6abbb4bec36916a97e188a2379a171b13d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c601f66ab2a1b6f332e431c600fb707247a4b23aea7c7d6cd1bd6fee696e3ef0"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.2.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "879082a2993dffed9d1a7411b8da59bb3bb113aa08e43ba9dba31c365eeb6206"
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
