class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.1/abot-aarch64-apple-darwin.tar.gz"
      sha256 "008883ec47b0d95ed44aa380697cef159a6793725947fded5107444fefecbfaa"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.1/abot-x86_64-apple-darwin.tar.gz"
      sha256 "69f68883efb86f6dea2eb1e1cb055c3b55d8a6c1639911b2f00ea7cf4fc51d77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.1/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff021bd195585a8f26133e98ff01785cd563a1d26293d8455d16e6f24b0ac1b4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.1.1/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "892ba2219a8b3c2f1d4fad4aba54bd5d3567331a4e8b9bc36ee32a53928e793f"
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
