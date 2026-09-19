class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.6/cc-audit-v3.23.6-aarch64-apple-darwin.tar.gz"
      sha256 "b0998133b692c8863f723140a79ec9fa65a8e7ae7afc9a92f40296089f4875a7"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.6/cc-audit-v3.23.6-x86_64-apple-darwin.tar.gz"
      sha256 "d3b2f055b20a16cdc4b406e207868a69934d5463771099ba049bf1fa0711b068"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.6/cc-audit-v3.23.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b44a05d1760b51cd82893b9aab5fccc8788b930fa92656f4fffc425c17982bd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.6/cc-audit-v3.23.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c5d9eda2e191b4af45f21e8271ae43366dffd45456527efc0d4eb6c59a2392a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
