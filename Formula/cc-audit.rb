class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.5/cc-audit-v3.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.5-aarch64-apple-darwin.sha256:1023eb478c1a41f9bf36b0f43f84249efd95b54a9fc9f5f7dfdfda7643f0ded8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.5/cc-audit-v3.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.5-x86_64-apple-darwin.sha256:ded41362262d32e4ef34535bf4275386244dc5142ece25f9e0401632eee65f73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.5/cc-audit-v3.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.5-aarch64-unknown-linux-gnu.sha256:a4c7b3cd970b15aad8bdb40981ec3a9e515880ead370999a30ea077eafc64123"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.5/cc-audit-v3.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.5-x86_64-unknown-linux-gnu.sha256:a3a3fe4842ad7f2a5f2ed70de9980f04e9c87792ff766a7669559022f48bee7c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
