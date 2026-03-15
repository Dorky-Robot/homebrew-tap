class Sabihin < Formula
  desc "Natural language to shell commands, powered by local AI"
  homepage "https://github.com/Dorky-Robot/sabihin"
  version "0.25.1"
  license "MIT"

  depends_on "ollama"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.25.1/sabihin-aarch64-apple-darwin.tar.gz"
      sha256 "1a9ab1a2a6a3d881da336f20a63b0260ace1a3c08eba286ee0c2b58119ee7ee1"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.25.1/sabihin-x86_64-apple-darwin.tar.gz"
      sha256 "5b3738c5410674d7c17283a2357e6e6b5a26c9faed8f28ba93c13d462dd40b1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.25.1/sabihin-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db9ef4abe1bd805e389acfdde028a3c4485a8036be496e989d92a27d088ac0fa"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.25.1/sabihin-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f01e6c49d751c508f9b5c9c0a1798528d7f133b27f1e37febb197a97031d65f8"
    end
  end

  def install
    bin.install "ai"
  end

  def caveats
    <<~EOS
      Ollama must be running for ai to work:
        ollama serve

      Usage:
        ai show me all files in this directory
        ai kill the process on port 3000
        ai how much disk space am i using
    EOS
  end

  test do
    assert_match "usage: ai", shell_output("#{bin}/ai 2>&1", 0)
  end
end
