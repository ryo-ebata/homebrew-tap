class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.34/cc-audit-v3.22.34-aarch64-apple-darwin.tar.gz"
      sha256 "957cd6336b9f2d318d027a31332f44d16e3a9d477dc351600dc97a3f9fb5ee7e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.34/cc-audit-v3.22.34-x86_64-apple-darwin.tar.gz"
      sha256 "78e9cc882bd9f023f917dfeca361c828fd257dbc792817c0dfc8efba33f7d727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.34/cc-audit-v3.22.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b17bb54cdd695e694a04a8dccd43622eae97229e3486fd1c9e53bc71ff4115dc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.34/cc-audit-v3.22.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7155a6a04113ada789ba4472721d7c25c5b55cb4ae592e13e93ad5ed95c02025"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
