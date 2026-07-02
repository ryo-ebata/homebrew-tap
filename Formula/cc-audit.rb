class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.9.0/cc-audit-v3.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "aec281ecd0867fb028c6f7a15731a36d22905e24a613be6dd237fa16ed7f5260"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.9.0/cc-audit-v3.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "675aa5e287ac36f0150b24c41e44ff26e02411ea1476c57304946491e78cc5f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.9.0/cc-audit-v3.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa30fb942a0d356b61ab22113db71f56c61b0f2bdd72de4e795a73171a5f224a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.9.0/cc-audit-v3.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91c86affdd9eedc19859e64f4d264128d1849ab162c83694f71f141c20e51747"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
