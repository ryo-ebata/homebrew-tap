class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.37/cc-audit-v3.22.37-aarch64-apple-darwin.tar.gz"
      sha256 "c0925caa6ee87ec1c319a61064e74d62b9af0ad2b1561c4361d11ba619c372f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.37/cc-audit-v3.22.37-x86_64-apple-darwin.tar.gz"
      sha256 "5f529c2149fe93bd714a3ca64dc527a9ef554b69230a0840c2f811b856dbca2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.37/cc-audit-v3.22.37-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00a14d4f1cb7034e050422e50c7b5dd61cf79e22190edcacf037716d64911fe8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.37/cc-audit-v3.22.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "027d69d13e9dd478fb27a0684e7d3d2d1940f5c52e84c7ecf21c11a54fd3f3cf"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
