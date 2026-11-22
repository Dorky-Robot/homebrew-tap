class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.9.0/abot-aarch64-apple-darwin.tar.gz"
      sha256 "bd710c65d76dd62e56418b40c81034aea67d638b6eb826824e9ee555a379de85"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.9.0/abot-x86_64-apple-darwin.tar.gz"
      sha256 "8d75c946ef02c4d792dd96f9ebd50aab83d91de03f4c921b1b48a0934a4a7bc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.9.0/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9efe35ccbd1853b753c98ede1e29f74e81668a4fbb17796b166ea9e8793b3ab"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.9.0/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3ab91a5edbf964fbfbbdefcfc3485646cc004687ac69457a022e386afd00421"
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
