class Sabihin < Formula
  desc "Natural language to shell commands, powered by local AI"
  homepage "https://github.com/Dorky-Robot/sabihin"
  version "0.1.0"
  license "MIT"

  depends_on "ollama"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.1.0/sabihin-aarch64-apple-darwin.tar.gz"
      sha256 "0fb39e6a7fae40475fb5ae0beab071a8e00e9dee297effa6f04d0a9aca83ee26"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.1.0/sabihin-x86_64-apple-darwin.tar.gz"
      sha256 "b77e77760d5ea3694ea5f007e2c86d41f2bccde8371709b9f8cb8a817319a1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.1.0/sabihin-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3e67d80aa656dfc0590486426201a662c86ab20b692fc68fc9bb5226ad191f7"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/sabihin/releases/download/v0.1.0/sabihin-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40d491236b5b8ff34b0085feb4d64487c24d5eb012539e6b84a6db4c106c421a"
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
