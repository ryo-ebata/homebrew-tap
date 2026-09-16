class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.3/cc-audit-v3.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "54f03d611478bf1ae86e15e578db539aff096d227cb3fec8f4aeaac579295417"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.3/cc-audit-v3.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "6c1f87e970851bdc0c0d1ca9d9c05b9bc469aad21bf9048806ae3df8221e5aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.3/cc-audit-v3.23.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7dbe793cf6fce93413a12111c4a64c1cf485c9c2fc47d87891aa177178efacb"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.3/cc-audit-v3.23.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b15b5b53d2a618bc89a9846c3151cbbef57eeff5c65ac6b2591fd5602a21db2a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
