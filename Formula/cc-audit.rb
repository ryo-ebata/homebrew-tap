class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.16/cc-audit-v3.23.16-aarch64-apple-darwin.tar.gz"
      sha256 "d62575c569bf476c57455294d31867e4ed72a4869e2617caf959235535928249"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.16/cc-audit-v3.23.16-x86_64-apple-darwin.tar.gz"
      sha256 "62f5c73398b79e1fcb9524cb28a3528bd54d10d25a19f8a8ff7510411295cd9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.16/cc-audit-v3.23.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "665e2297f43c3302040278dade0a0cf6830f948c5f56d4085a2a76e164442da1"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.16/cc-audit-v3.23.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d47eb76cc02aac4da1a07a5430b4168ab945cfb1915a2317d3a686e5f99e92bd"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
