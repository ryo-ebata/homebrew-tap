class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.4/cc-audit-v3.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "3e88a3f65278a70cfa9730052912405a7d06f835985b7c0bdb8883c402759e1a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.4/cc-audit-v3.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "9b566a3098c6c87047b35348e8c9228252446e12c606f489299d437cc808a67a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.4/cc-audit-v3.11.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2126a7c5a07381f2847da041481f04e0ae3657cec6a2b4c5e0c3a9081d1fc0ac"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.4/cc-audit-v3.11.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b6e5d0b86b5e7613bae38d3b8ff8d86810df937dc98fc2340f140a7f934e119"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
