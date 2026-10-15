class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "1f3fe60b812dac0e36b6d1bd240649c1b55d4a0d623b9bdc68ae1bf3b730870d"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "65eea33b35d4752a7225fba47bba4bd8d247d099ea8b3e00f805c74ffbce3079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18303ea58f81b28912177a4df146e548a99e1c8768eddaa0400328caadcfd725"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.3.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f530a051a292355109a99fb558d81568cc1da9c6aa00a7472c4c0d07627946fd"
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
