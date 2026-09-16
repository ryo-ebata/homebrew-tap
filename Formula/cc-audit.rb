class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.20/cc-audit-v3.22.20-aarch64-apple-darwin.tar.gz"
      sha256 "d0229a00dc1464619335d511878a4c36e58dbe5a594e6e2cd264c958e2ba44ad"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.20/cc-audit-v3.22.20-x86_64-apple-darwin.tar.gz"
      sha256 "0813e041e3eb1ed391f875c3d7b35e719291e464e607fa3e2b0d2adb6169d4d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.20/cc-audit-v3.22.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1130f15d9f55f5d726850954f39c2150ca8ac5088c9563ff699013394589af3f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.20/cc-audit-v3.22.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4dae0811affc6faf0d5a6bc24d5d606e9919cef69aee5315b15a07fd7e9a673f"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
