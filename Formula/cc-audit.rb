class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.0.0/cc-audit-v3.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.0.0-aarch64-apple-darwin.sha256:e163cf23d70cd2050e4a39cfc5aa8490fb057adf689e69fb0cd3676ea69e1523"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.0.0/cc-audit-v3.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.0.0-x86_64-apple-darwin.sha256:f55129956ad277e3989033d9c7e1ba00a573be0d99c14365f5a846331bc82e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.0.0/cc-audit-v3.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.0.0-aarch64-unknown-linux-gnu.sha256:2ea3f53f53c836c2ac2fbbf6202a8803939c1555268cea8db70cf5e68e20bfb0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.0.0/cc-audit-v3.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.0.0-x86_64-unknown-linux-gnu.sha256:ee51073509683fe258439b5c591b00d0a64d496c8b86f077b9063ef7f43b81fc"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
