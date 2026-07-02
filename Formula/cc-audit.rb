class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.6/cc-audit-v3.11.6-aarch64-apple-darwin.tar.gz"
      sha256 "ccee2362b9a0ee334fbf8b25c7bd2b119997374189c109d28f874ddf2bcd39f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.6/cc-audit-v3.11.6-x86_64-apple-darwin.tar.gz"
      sha256 "e1ea0199121f791fdc2a3c06d582fc46749543bfb14a82a0eb3a549d27b942f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.6/cc-audit-v3.11.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c53f425b87c226511cf325d72aed75682e6c17a4c3f8621639b1438dbf2e4a13"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.6/cc-audit-v3.11.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e2262374589a2f098322e733926dc9db832ef9c8eca9e795a65a0a865ee49c8"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
