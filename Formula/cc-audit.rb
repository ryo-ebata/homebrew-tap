class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.10/cc-audit-v3.11.10-aarch64-apple-darwin.tar.gz"
      sha256 "2982d133aa2b31a95089d19f3bf59e7451a6b0d24621e7f629b2fd4a7769fccd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.10/cc-audit-v3.11.10-x86_64-apple-darwin.tar.gz"
      sha256 "39800efa0cd0e63af3c88d8f3939009617b16fc3cfad66fbd4e1591df9db61c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.10/cc-audit-v3.11.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3117d136b911d081e31e3455ea627ef0485747e25acaabf223ec913a78306715"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.10/cc-audit-v3.11.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7af7f30bd69ecccd988fcccbc29c1f35028c2bac94d76312420c9835bea4b2da"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
