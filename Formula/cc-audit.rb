class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.18/cc-audit-v3.22.18-aarch64-apple-darwin.tar.gz"
      sha256 "68941c7ea630bfc02948aec84d70854ee49497b3daff8fea913e82a977d3f273"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.18/cc-audit-v3.22.18-x86_64-apple-darwin.tar.gz"
      sha256 "84d4950c6d7f5ebcbb1e3ea334ccfddbcc8efaa36805f4d3d2bd5281edb40578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.18/cc-audit-v3.22.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8567531466b7e15fb55a7bcff1505609ca561026f50860a338f9a6ce7a10692"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.18/cc-audit-v3.22.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32aebdd48b728d1d68f5b923afeceb6d3750a014fb295ca9ecd43e8fd32ac9e8"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
