class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.1/cc-audit-v3.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "775d60b5ab76bf469d6368672c27be26ba9eb1b829e4fa3b82ff2a1c71011473"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.1/cc-audit-v3.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "0b850f1ab849876bb615ca75495d25600e7c653bbef86a9704813afa258bb740"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.1/cc-audit-v3.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1443054610e08e420384be4446d352f0897e9457113d3529e4a802a19b7181a9"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.1/cc-audit-v3.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0c4cd39d464c5dce2e82b78ca1ea6f06a41401384afce4b1bcfd6cc00a5465d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
