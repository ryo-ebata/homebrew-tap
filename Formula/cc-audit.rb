class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.3/cc-audit-v3.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.3-aarch64-apple-darwin.sha256:d91f07c104f5fc66ac8ae3a10a62ed85022abd898810b8dcbf8ce4ef3b511033"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.3/cc-audit-v3.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.3-x86_64-apple-darwin.sha256:82d40146ebcd4a33960205beac9ef23e28bfe43842e024e71dbd448a364f704b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.3/cc-audit-v3.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.3-aarch64-unknown-linux-gnu.sha256:43f8afc51df4ca8468de1e6bc9b3cfeb4754e6e6faabcb5c9de2f0f3551f4a9e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.3/cc-audit-v3.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.3-x86_64-unknown-linux-gnu.sha256:a502f9f447275472d0f10a0679a0d360971007ad588f16084cb4da12acde9e20"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
