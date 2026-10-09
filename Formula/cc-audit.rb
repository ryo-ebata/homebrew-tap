class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.27/cc-audit-v3.23.27-aarch64-apple-darwin.tar.gz"
      sha256 "6241fa9f13a1d8cab84fc12f1612100d09ca850d877bebafdebf40ae25fec783"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.27/cc-audit-v3.23.27-x86_64-apple-darwin.tar.gz"
      sha256 "b9ece6707a19bea9d292c7e07c3c0e830899aa56a65d63bc9913df552624c7c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.27/cc-audit-v3.23.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4821378f19195733d6c983e728487c97eba634648f7ba21348d1a8f1d19f050f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.27/cc-audit-v3.23.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ded1b224e9d73f115298358575b696bb31d6b703077c5adad3005d7e3f50c9b9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
