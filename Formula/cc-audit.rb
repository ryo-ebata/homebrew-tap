class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.14/cc-audit-v3.22.14-aarch64-apple-darwin.tar.gz"
      sha256 "01d9506e455181e01f2fc543603437d123e4070551f529adf304ca39b4dc2c94"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.14/cc-audit-v3.22.14-x86_64-apple-darwin.tar.gz"
      sha256 "0ae6baff6d945e3c6bbaab8952cbb3f0355eaedcbf8d6a4c53f1f55eaefd8f09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.14/cc-audit-v3.22.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "977a0ce81c6af850c2e6d93d79528758fb5ead6df9226c1496436e768459bf7a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.14/cc-audit-v3.22.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3b726f9645bf72376ecac0c5430b5626d9b61526def496ef43684e203aeceb9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
