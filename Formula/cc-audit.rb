class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.21/cc-audit-v3.23.21-aarch64-apple-darwin.tar.gz"
      sha256 "4fbd6c926e0cf64c8a63fa5804ea98b00a1828e4fe1614c08cdfb6dc80677a7b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.21/cc-audit-v3.23.21-x86_64-apple-darwin.tar.gz"
      sha256 "541f7d7072246f57087825986922dd2d3d7d967106465516c0eee925d8086ef6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.21/cc-audit-v3.23.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5eea2afaa01b189d1b8014d39da2b09b6dd78881b2c48c0abc3818680d5c3c83"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.21/cc-audit-v3.23.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1010d84433a028449555bdeaf263dbc2ea6e1d93fb1722f12c5d8c9e250caf66"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
