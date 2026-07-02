class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.2/cc-audit-v3.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "c525e789aaf8139c79bf7f64ce09032c89b100966cf4b6ac007826c2c882d796"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.2/cc-audit-v3.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "2bb9148c37cd1b5de1f5cd400888bfb8db98d5e4e5924f5c59431261887a869c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.2/cc-audit-v3.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b4bba2f9bd66e5fb2adea897659845eff0eaa82e1cb4afe86dd6b037c95f4d3"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.2/cc-audit-v3.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1354756e3ded9be8746b2d45017436e57addf8cb590b208cccb1f976fe59484"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
