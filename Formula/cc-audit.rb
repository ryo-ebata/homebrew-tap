class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.11/cc-audit-v3.22.11-aarch64-apple-darwin.tar.gz"
      sha256 "d588d44c89a94e8878e37405e51b08878237ec1805d903771a5063f0998db9fc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.11/cc-audit-v3.22.11-x86_64-apple-darwin.tar.gz"
      sha256 "b88fbdc5d37a7e2aa2ce2789df7003309653baa57a78cb4c99265172b60bccac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.11/cc-audit-v3.22.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cf952a44e2b1780c0aa3dbcff4cf2f626b922a8de231c85eb14475ec8502b02"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.11/cc-audit-v3.22.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f6491dbec64aa7055b9e872376d795066a0fb57dccdcd9aad7bd2aaa6f95f20"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
