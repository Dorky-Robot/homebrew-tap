class Abot < Formula
  desc "AI-native spatial terminal interface"
  homepage "https://github.com/dorky-robot/abot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dorky-robot/abot/releases/download/v0.1.0/abot-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe00b64479ff5ec55ab97acca16b096d3442002f79fe8407c61d9cca6c51e0af"
    end

    on_intel do
      url "https://github.com/dorky-robot/abot/releases/download/v0.1.0/abot-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e58738989b3200f2bc94df18f35827dd44ad323897e56d902fcf1c7f1131529"
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
