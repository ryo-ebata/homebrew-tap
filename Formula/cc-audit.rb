class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.4/cc-audit-v3.23.4-aarch64-apple-darwin.tar.gz"
      sha256 "424782f9adce09e6b78d97a7911291cc0833b34d6bbd2cd828920991f112df64"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.4/cc-audit-v3.23.4-x86_64-apple-darwin.tar.gz"
      sha256 "db4019dd805bbbcd9ba4fc3b49cb339579317b3b74882d1273ef1d28b1af2846"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.4/cc-audit-v3.23.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba1d38b341e5521e46f9ce032ae8ec6a66d9191b87421e2e2aeb41cef24b0ded"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.4/cc-audit-v3.23.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "535042d85c257b650e19e8ae6c31095ddd2d23d8c0a738fb77a839c1311c718d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
