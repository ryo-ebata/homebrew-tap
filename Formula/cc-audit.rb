class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.0/cc-audit-v3.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "5424abbcd823f3d1772588c347ad716fa6aea8922d06b691687be68b22b8e73e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.0/cc-audit-v3.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "094c9d5aabf05db51534b16acb9bde5eabb34f4f3acace850fd940e0246b8e69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.0/cc-audit-v3.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1dc1e687147c9a857d7c994994fb899935535524c19815d3a70d4b20177d37cc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.0/cc-audit-v3.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ab4f4ac9674ce978100b15d0819728f090246992627cd4bb8d51cfc6b4da9a3"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
