class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.8.0/cc-audit-v3.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8fe4ba9e0a8ee9a01fc529e329a9dabe27f098228685d1ceebff23639b056ac"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.8.0/cc-audit-v3.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e8c1f272538803df49f82027a7979d044a82695586a815e2633336ee9c70046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.8.0/cc-audit-v3.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ad731eda3d252900db8fae8348b7b62c11285f89ca44a6611e03188eb4e0646"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.8.0/cc-audit-v3.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbbdf31e9ec88c71309783106436b3034a4f03f2642295dea44b1c7fbaf4f57b"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
