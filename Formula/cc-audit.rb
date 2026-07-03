class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.11/cc-audit-v3.17.11-aarch64-apple-darwin.tar.gz"
      sha256 "2756d72bc4c30822c7642d6ae00761c4f186a4a45c8fcc220b4c967e8d1ca9f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.11/cc-audit-v3.17.11-x86_64-apple-darwin.tar.gz"
      sha256 "163bbe1f569e16d7334d3c06102d94d9dec13031923f38861253be983d44ed28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.11/cc-audit-v3.17.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a49c4c113cfefb45ccc3d6fa6d689d615796085b963f8841494bae1a1ee3ec41"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.11/cc-audit-v3.17.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aee9d6732e715f7872f7119ad90257e428f600ce6e6b2de2535483c06b7c9a95"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
