class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "900b29b6fdd2854d8016aa41e495221df97586e6538f81b13768d4b480408f00"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "6c51f6798a6f62211165775a662e1b25d2f3392b6a9245b22cce14eb8f540095"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97a83193316a49f095476dccda3ddb27449a2cf22653def14020a8000a8e8d3b"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.0.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9035860fe184adbd35892ebc480532fd99a7052978781cf930cfcd67af515bad"
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
