class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.7/cc-audit-v3.22.7-aarch64-apple-darwin.tar.gz"
      sha256 "cbb9ace3f37a14d1b79f4c6040df1ab22e211be1140cde0e222336dadf968236"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.7/cc-audit-v3.22.7-x86_64-apple-darwin.tar.gz"
      sha256 "579a97f5e28fb27a84d0e84ab8406d8f396a6ddda0501405036b94232e5b9831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.7/cc-audit-v3.22.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93a20997220ec99fe63cbcd6ac4aec70be93f42f48d061727b4839799876e4b2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.7/cc-audit-v3.22.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21061f0af7219f50206a0429718e3ab89c6f2987e044065336ceccbaf3b08d17"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
