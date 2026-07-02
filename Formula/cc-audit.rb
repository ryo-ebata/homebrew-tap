class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.7.0/cc-audit-v3.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "e2446b8c100efaa2fa1dd312dc8f7a8112037a36624a2596d141709452c25845"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.7.0/cc-audit-v3.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "fad190303af42ab0848e87da082e4a27c048d9986ec2c8e865f60f10821b6c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.7.0/cc-audit-v3.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a8286b5861d5d1cc5ab48748e542120b873bfba791ab6f47200b6eaae2cde19"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.7.0/cc-audit-v3.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25069d2460a3269a69a9cbfb51a152b7d9df11d827c7a377b9f5bfaeb8ac53a4"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
