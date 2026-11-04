class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.36/cc-audit-v3.23.36-aarch64-apple-darwin.tar.gz"
      sha256 "3d5bd8528fa0eaa3682d8d464e56649071a5c18ad19af423fc967df2d35986e2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.36/cc-audit-v3.23.36-x86_64-apple-darwin.tar.gz"
      sha256 "493d3610bb1d1a7a99bc46dc6aa6e40d6c275865ad7051b1065fe816d2a91a9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.36/cc-audit-v3.23.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e45c917ca080b1ecdd2ed140e06d00768333eea09fe5c98cf0361e1e9dace4d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.36/cc-audit-v3.23.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28d47390d70d8d21656926a3d330a440889595a143c256a432688423bdb3b007"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
