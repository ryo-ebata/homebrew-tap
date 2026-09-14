class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.27/cc-audit-v3.17.27-aarch64-apple-darwin.tar.gz"
      sha256 "aef46736ce4da1a7e4ff8d6d333216e78f430f24cc410b54a109440e3650a88e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.27/cc-audit-v3.17.27-x86_64-apple-darwin.tar.gz"
      sha256 "f95393a646a86cd6ccc5907a88b0f68599f4e52f4b683c883675cabd3c42bcef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.27/cc-audit-v3.17.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d86758602dc727dee5cf241acafb6d2c89d5b8cccdd5808dfec74ee0904af00"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.27/cc-audit-v3.17.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "789dc36012be568b8ad68370c4d61b2cc614812fa6ff85e0d47b0784091d3f6d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
