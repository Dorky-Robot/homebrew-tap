class Abot < Formula
  desc "Headless CLI for AI agent identities — git repos with a model attached"
  homepage "https://github.com/Dorky-Robot/abot"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v1.0.0/abot-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "500129329862618cdf645a2829bea37f1d97fb6e7ef6cf71c279bff212bd833b"
    end
  end

  def install
    bin.install "abot"
  end

  def caveats
    <<~EOS
      Quick start:
        echo "you@example.com" > ~/.abot/commit_email
        echo "Your Name"       > ~/.abot/commit_name
        abot create alice
        echo "say hi" | abot run alice

      Optional: install Ollama (https://ollama.com) and pull a chat
      model (e.g. `ollama pull gemma4:31b`) to enable `abot run`.
    EOS
  end

  test do
    assert_match "create", shell_output("#{bin}/abot --help")
  end
end
