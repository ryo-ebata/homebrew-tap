class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.25/cc-audit-v3.23.25-aarch64-apple-darwin.tar.gz"
      sha256 "9a858eabf75e0b4dc1d148d740ec0859be03f50d39099fd46c1d074be91a85cc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.25/cc-audit-v3.23.25-x86_64-apple-darwin.tar.gz"
      sha256 "20ff212f445e171f1be1d40c4c388c39ba5eb55845226fb8f91eb773b89b408e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.25/cc-audit-v3.23.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c980832c22a30a2636b135f1d71766bf341a50b2fc1a0dec46e5ab4798c3e4c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.25/cc-audit-v3.23.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80f8fed962ab655551f444d98327e6364a522e51437bdbad7fbd53c1d70f9a08"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
