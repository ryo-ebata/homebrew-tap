class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.28/cc-audit-v3.17.28-aarch64-apple-darwin.tar.gz"
      sha256 "d5c94787893ae722a3e30ab43f5ea4c01cb6d3c701ff61502c81424f19afa0f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.28/cc-audit-v3.17.28-x86_64-apple-darwin.tar.gz"
      sha256 "914d0ee41d1521f1b41ae9d1ccfa512b9f4ead03c5574edc1287f4a87b30a4af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.28/cc-audit-v3.17.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7e51f32acda03de808930bd03ec206675b93c15afe46525d0d45224e19e06bb"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.28/cc-audit-v3.17.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52f4bbabb730ba616b8bad3d11a1e15c306f6e856adf6bb25a0956ea6e14eee2"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
