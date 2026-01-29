class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.2/cc-audit-v3.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.2-aarch64-apple-darwin.sha256:223373aa142341ed7eaf16fe6bce8730d58d25ece896b269744db22211e87d9a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.2/cc-audit-v3.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.2-x86_64-apple-darwin.sha256:fb381775acffea8d4af684aaba04191498260f9908624e16255759071ecfd563"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.2/cc-audit-v3.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.2-aarch64-unknown-linux-gnu.sha256:21d1612c35b3771ccdfa2d96fba55adec20d82a345766e87ae223f7457b6a2be"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.2/cc-audit-v3.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.2-x86_64-unknown-linux-gnu.sha256:15b2be98e8c66fc448d1c21af52f634c6786df80e6e36ea33ecdb4c1bc7151a9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
