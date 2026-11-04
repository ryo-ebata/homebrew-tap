class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.32/cc-audit-v3.23.32-aarch64-apple-darwin.tar.gz"
      sha256 "dc3bb36062fe02cd983294bfcf5c000cb2d83454894d74255ef8c6ac8937398c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.32/cc-audit-v3.23.32-x86_64-apple-darwin.tar.gz"
      sha256 "2fde0db339f50c8dd9f21face1e8d636b50631afc70425633ad43a0a3dd262de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.32/cc-audit-v3.23.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ef6014b994a9c6f029512a3de7728e23ed6053dec0cae5b96ac43dd14ef3fc8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.32/cc-audit-v3.23.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92244de1dba7e8f555bf61946159d92d87ada6ca6aa2aea274212e0758eaab80"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
