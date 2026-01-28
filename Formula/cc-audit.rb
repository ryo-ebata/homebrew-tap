class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.0/cc-audit-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.0-aarch64-apple-darwin.sha256:1857974d244bbae240a5ca27f5c4630ca8bbc90d9bf0e996e9e3291016b4e759"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.0/cc-audit-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.0-x86_64-apple-darwin.sha256:074dae685d6a95c3759c327c5036a243b4403706dd5a20cb2fb824e9a750c3db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.0/cc-audit-v3.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.0-aarch64-unknown-linux-gnu.sha256:9bb280e2288c629df7d25e07827b0fa5f9953e55f5fba7e0d17b7aedbac22e6d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.0/cc-audit-v3.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.0-x86_64-unknown-linux-gnu.sha256:c0bd95a3cf34470b0eba8f1d1ff3f71bec894534b8126a27f793a2419053660b"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
