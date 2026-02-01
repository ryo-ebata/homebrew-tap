class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.12/cc-audit-v3.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "81c197a9702758e87832dcb587fd7d9f1f102996fe0d15d9fe98835522862578"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.12/cc-audit-v3.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "b30422c4f92b2a07ed169b253649fa0a667f42ae210e5d7ed93f7370754f8b00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.12/cc-audit-v3.2.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c19e7905ec71679db81f8b17ef85c9e7f33d7ffa90437e2b96c6ff8580c547c4"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.12/cc-audit-v3.2.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6b952f7d897563b84fe51e83b64bf28903b0f46f4d86e7492ca9cd70d9821d0"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
