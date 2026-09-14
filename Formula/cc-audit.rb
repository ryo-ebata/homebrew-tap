class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.18.0/cc-audit-v3.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a921b51139c57658b26d4ccb76cb664fff630e1b8826e12de6f2d7b9fc64719"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.18.0/cc-audit-v3.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "9bd8a1869fc52d247d69e3059cf59e81f6a2e0bf27b67eb20ee4873b75c0b2fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.18.0/cc-audit-v3.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a58ea67c17ab2a3ad887ef089295bfd59ceb7c556b08ba2413e1b3976daa9ca6"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.18.0/cc-audit-v3.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2001cdc426c527dfa174e14a3ed91b675740b25cd54040efdfa3e9836dcec5ed"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
