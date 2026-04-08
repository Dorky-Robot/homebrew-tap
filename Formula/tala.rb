class Tala < Formula
  desc "Git-backed markdown notes with WYSIWYG editor and version tree"
  homepage "https://github.com/Dorky-Robot/tala"
  url "https://github.com/Dorky-Robot/tala/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6a58d5e0963960c9f9f6ddeecf02f1649e9ecf851ca384ddba5c28c4cc6b95f8"
  license "MIT"
  head "https://github.com/Dorky-Robot/tala.git", branch: "main"

  depends_on "elixir"
  depends_on "git"

  def install
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    ENV["MIX_ENV"] = "prod"
    system "mix", "deps.get", "--only", "prod"
    system "mix", "compile"
    libexec.install Dir["*"]
    (bin/"tala").write <<~EOS
      #!/bin/bash
      export MIX_ENV=prod
      export TALA_DATA_DIR="${TALA_DATA_DIR:-#{var}/tala}"
      export TALA_PORT="${TALA_PORT:-3838}"
      cd "#{libexec}" && exec mix "$@"
    EOS
  end

  def post_install
    (var/"tala").mkpath
  end

  service do
    run [opt_bin/"tala", "run", "--no-halt"]
    keep_alive true
    working_dir var/"tala"
    log_path var/"log/tala.log"
    error_log_path var/"log/tala-error.log"
  end

  def caveats
    <<~EOS
      Data stored in: #{var}/tala

      To start tala:
        tala run --no-halt

      Or use brew services:
        brew services start tala

      Then visit: http://localhost:3838

      To create a setup token:
        tala tala token create "My Device"
    EOS
  end

  test do
    assert_match "tala", shell_output("#{bin}/tala help 2>&1", 1)
  end
end
