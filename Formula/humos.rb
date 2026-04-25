class Humos < Formula
  desc "Personal OS: sovereign binaries that own your data via filesystem contracts"
  homepage "https://github.com/Dorky-Robot/humOS"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/humOS/releases/download/v0.1.2/humos-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "d5c93765f33bae171ff82c50f830b4f97a281fa917ec543d15784f7f657f12d9"
    end
  end

  depends_on "isync"
  depends_on "himalaya"

  def install
    bin.install "humos", "humos-mail", "humos-web"
  end

  def caveats
    <<~EOS
      humOS state lives in ~/.humOS/ (created on first use).

      Quick start:
        echo -n "$PASSWORD" | humos mail account add gmail you@gmail.com
        humos mail fetch
        humos mail

      Optional: install Ollama (https://ollama.com) to enable `humos mail triage`.
    EOS
  end

  test do
    assert_match "humos", shell_output("#{bin}/humos --help")
    assert_match "mail", shell_output("#{bin}/humos-mail --help")
  end
end
