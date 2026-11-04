class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.33/cc-audit-v3.23.33-aarch64-apple-darwin.tar.gz"
      sha256 "30fb60d79e7fd5a30e7e007b400dc69d067de3607a2b7167c257b2ac70cc866f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.33/cc-audit-v3.23.33-x86_64-apple-darwin.tar.gz"
      sha256 "4d68a741d64922951b46abf00a4961a9024667f006f20a8453f88d08f98734e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.33/cc-audit-v3.23.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db898b9bc7ce8d2b448ee907ffe602c3f0231890df779fe8d1c17c5d70efb925"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.33/cc-audit-v3.23.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12417e480a3ec078e5d57764f115519402f0329929411e13cd0a335e2521574a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
