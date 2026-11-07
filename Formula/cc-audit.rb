class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.37/cc-audit-v3.23.37-aarch64-apple-darwin.tar.gz"
      sha256 "af2f553dfcd6e8a4fdaa6de8ccefd67264156683bb023add9da9b9388e77af4c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.37/cc-audit-v3.23.37-x86_64-apple-darwin.tar.gz"
      sha256 "66d83c8ea14bf6b37c1ad9c22686593074ee2b96fd49343d0075f93e3998ecb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.37/cc-audit-v3.23.37-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "251b38085be4a9b6b217387c8c84eeeffd461c7386112dc455f6d334c8f4f25f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.37/cc-audit-v3.23.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5a3b70aff66f8a50aebefd39d86c8a3e3bcb785de0aaacb30c2aef8897928d5"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
