class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.14/cc-audit-v3.23.14-aarch64-apple-darwin.tar.gz"
      sha256 "9162b6a1bb8c13653d9d8472b2a2032f944985025f918e79f3ae75e6040803cc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.14/cc-audit-v3.23.14-x86_64-apple-darwin.tar.gz"
      sha256 "46e25ae9816af8264f8de022c8c1edf63dc67e1f2bda5119b6315acbb34f6ccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.14/cc-audit-v3.23.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27a9d036319f548e19f4686ba32a10a27d508429091005f6c9106fcbc3d71487"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.14/cc-audit-v3.23.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74666d7690b4480d319f85ef740b6d8b0e68a2a563c6e801bbcb1e0709de1ffa"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
