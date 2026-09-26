class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.13/cc-audit-v3.23.13-aarch64-apple-darwin.tar.gz"
      sha256 "507fee74aef36c8539b71875164c612f5194e563ec3274d022d8e555184e0145"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.13/cc-audit-v3.23.13-x86_64-apple-darwin.tar.gz"
      sha256 "ee9d6a9a266fdb97381f816e17d6042c7e64a6f5068e12b908dd2e46f715c0f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.13/cc-audit-v3.23.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1bc2b8eebc6e4dd5abfe4bef96214d45244f789148484e32992c2d317f20c944"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.13/cc-audit-v3.23.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95fb62d9a11d8e0dcfb19e51cc5204389eb803307142b1cf4b1f69bc9802a0c1"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
