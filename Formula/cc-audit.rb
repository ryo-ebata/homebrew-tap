class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.24/cc-audit-v3.23.24-aarch64-apple-darwin.tar.gz"
      sha256 "d3ee81311cd010f4e2666230866a8524bffa9b05f519936feda4e64617995a07"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.24/cc-audit-v3.23.24-x86_64-apple-darwin.tar.gz"
      sha256 "5e05348593acb6979e429a86b5bc552458ee49b931754614355eae570c90c169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.24/cc-audit-v3.23.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3552b9ea0ac91890ae26de0ac6e9b2b847979e1751e0857355f96aa35f60489c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.24/cc-audit-v3.23.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5473fae185e0a92635455d455f316e900bd26d4fb1360d2002e54dfb94b2a5b"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
