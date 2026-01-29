class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.7/cc-audit-v3.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "9d27bbb681e6dad234b73995775bc3a27eb66d10607bae7ae067cc24835adc4e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.7/cc-audit-v3.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "2d94cd5bf68c99b14a085a86c716e413732fb7de7081ac51da47740ed2e02f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.7/cc-audit-v3.2.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4658ddeb9ecee6c32259ccc6e5b35446bc640bc67b58faa343ff7f42f965257"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.7/cc-audit-v3.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30eb5d6124ddf62ab67d166d1851deb488e9388c86be5e40127be250868eab73"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
