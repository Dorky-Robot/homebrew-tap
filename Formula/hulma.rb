class Hulma < Formula
  desc "Project-aware Claude Code scaffolder — generates review agents, slash commands, and hook templates"
  homepage "https://github.com/Dorky-Robot/hulma"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/hulma/releases/download/v0.2.1/hulma-aarch64-apple-darwin.tar.gz"
      sha256 "a20e7a9f2762652272f91182b7e96d3aaa59edcac7b71207f1d628b49c29133c"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/hulma/releases/download/v0.2.1/hulma-x86_64-apple-darwin.tar.gz"
      sha256 "521694f2dc91172671f4e71bea7ee26e05068a91573f39985f69a90281c91de8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/hulma/releases/download/v0.2.1/hulma-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "423d1cc683fb5e98dc4c270f4358a8f113b5de0df4b634eee7ab15f77d4ea5f4"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/hulma/releases/download/v0.2.1/hulma-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f87406bf108d8b0dea9296ea7eca89eb012fb6c426dfdd98213028cdc7ad2655"
    end
  end

  def install
    bin.install "hulma"
  end

  test do
    assert_match "hulma", shell_output("#{bin}/hulma --help")
  end
end
