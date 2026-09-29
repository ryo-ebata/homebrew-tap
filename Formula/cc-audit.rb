class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.17/cc-audit-v3.23.17-aarch64-apple-darwin.tar.gz"
      sha256 "338b52398ae595bfb148c1b9eb812de7a13c97e0b11a8466080336e0bcd31b95"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.17/cc-audit-v3.23.17-x86_64-apple-darwin.tar.gz"
      sha256 "bf4d3128dd97c4af83e388ccf9d36aa5e8225fa6b2e274d92aed20f2a35663ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.17/cc-audit-v3.23.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dc0e4aa5c4f363f803f3d90fb9e03bdb201f1438cd2a5e57e40c21192296944"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.17/cc-audit-v3.23.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f3da4a33df36582b5e124f3c95571a4df1559263824147c2492c10a4022d192"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
