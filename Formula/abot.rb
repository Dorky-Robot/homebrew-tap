class Abot < Formula
  desc "CLI for a git-based ecosystem log: orient, start, land, dead-end, park, ticket"
  homepage "https://github.com/Dorky-Robot/abot"
  version "2.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.6.1/abot-aarch64-apple-darwin.tar.gz"
      sha256 "65785d6481e08eab2d1a84d8be6145082ef5fc7f3203b086f3928e71576afb33"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.6.1/abot-x86_64-apple-darwin.tar.gz"
      sha256 "ca32fb919807f1730c2a1f89e17154fb05f17e762cbf03706e9cba5c1deb0c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.6.1/abot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcb560de613ed90d3759deade4a5dcd5b833c2099ffe6f970aba07ec75efd749"
    end

    on_intel do
      url "https://github.com/Dorky-Robot/abot/releases/download/v2.6.1/abot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf84587c62c0680bf0fd39d613358296a90270903286d5d2a32642764e787cb3"
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
