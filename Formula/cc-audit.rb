class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.35/cc-audit-v3.23.35-aarch64-apple-darwin.tar.gz"
      sha256 "d62709d21ca48600c8fcfe6b9acfac9fba1051921744d6ad556604d18295b304"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.35/cc-audit-v3.23.35-x86_64-apple-darwin.tar.gz"
      sha256 "4fd58268fe97a2530e4d886b70c109f5cb07d82ea38b4cd926a68a67c26b84ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.35/cc-audit-v3.23.35-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f75fd50bb588647c4c8b37d802e08a128751e9a65a248a7b767e10314dcd64ad"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.35/cc-audit-v3.23.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af31cde14e2b7f53a0fcd157cb94c798691d90b6a74eeca191421b49abe113ef"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
