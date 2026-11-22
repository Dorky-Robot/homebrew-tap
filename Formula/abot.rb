class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.8.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "4f7204488ac6fd77f264888855516baac5092111b9fd5c0e8b2c1d43b9ef0860"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.8.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "ee18888dd8b7ea7f47f1aefc41972aec456a3b1a1578621f268af45ab49a647a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.8.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "473655efe86532047accb58208e8d6ab7f2842427442a9a7a744ca1ab2a09576"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.8.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ae54b16cf1e624fb42b57755b859c69bc57284bd954433cf9f23efb3d25df87"
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
