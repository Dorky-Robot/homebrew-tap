class Abot < Formula
  desc "AI-native spatial terminal interface"
  homepage "https://github.com/dorky-robot/abot"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dorky-robot/abot/releases/download/v0.2.0/abot-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c029b816dcf83125a7c91619df64e67d730dae3a1cdcc63bc6337f9e149c3c57"
    end

    on_intel do
      url "https://github.com/dorky-robot/abot/releases/download/v0.2.0/abot-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a02022ecc23f96612141d355c292ce65547c28929f1c3defda226feec61c9c3"
    end
  end

  def install
    bin.install "abot"
  end

  def post_install
    ohai "abot installed! Run `abot start` to launch."
    ohai "If abot is already running, use `abot update` for zero-downtime upgrade."
  end

  service do
    run [opt_bin/"abot", "start"]
    keep_alive true
    log_path var/"log/abot.log"
    error_log_path var/"log/abot.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    assert_match "abot", shell_output("#{bin}/abot --help")
  end
end
