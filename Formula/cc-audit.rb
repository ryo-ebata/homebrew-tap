class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.5.0/cc-audit-v3.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2520b378d8c66869c54ab2f2a5036620c0a338431668c05f2768a416a0c9a7a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.5.0/cc-audit-v3.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e73baa7753807704be4a923843661fbbb99e8edf6b385748a476fd3a48b69a40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.5.0/cc-audit-v3.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c6c8172dbaaada7d88a09cae02ee3b78b56368d80c89406bd82e64fbac5e270"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.5.0/cc-audit-v3.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ac5a5dccf980140910accef16fde860fc8d816cb8066ac10c78b2dbdff07b32"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
