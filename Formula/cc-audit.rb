class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.6/cc-audit-v3.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.6-aarch64-apple-darwin.sha256:83a4559998082234a70c4e964ac14f6802741ecb1a17be99fe2b5645bccb9a7c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.6/cc-audit-v3.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.6-x86_64-apple-darwin.sha256:1fc22a365c1e0a304dd45d61683d0c2cf531b4bb8996f756174bdd574c3e7360"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.6/cc-audit-v3.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.6-aarch64-unknown-linux-gnu.sha256:1ea7671f73723b037e6ca0aa5ed414ac8b1246fdeeb6b254ce0feaad53a2ea53"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.6/cc-audit-v3.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.6-x86_64-unknown-linux-gnu.sha256:70413e20f0b39a28fcbb49d257e6b4b89108bb3781596dc481deac05d2f73e65"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
