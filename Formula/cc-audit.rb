class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.22/cc-audit-v3.17.22-aarch64-apple-darwin.tar.gz"
      sha256 "3a09d925c02db68f0462d57a2e49934ac8596e172194f445ffa227457d0ad12e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.22/cc-audit-v3.17.22-x86_64-apple-darwin.tar.gz"
      sha256 "6f6be85f5501dca68df9859a9673c5b24c274eae78cdcc06b5f6b2aa6ed5296d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.22/cc-audit-v3.17.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "611dda7d3064fca809aedbe78e503584ce9212f53f4ee85a9ca02e8f7c279aac"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.22/cc-audit-v3.17.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8335d48ca2f3a37311f767dbacf28efc82596b411511b790f9ee52819c5a11c2"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
