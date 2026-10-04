class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.22/cc-audit-v3.23.22-aarch64-apple-darwin.tar.gz"
      sha256 "57c8d2d37f9ca747f1f931eede95c80c557a6267ac02d2d3576d3f8e15018729"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.22/cc-audit-v3.23.22-x86_64-apple-darwin.tar.gz"
      sha256 "b9e8c0b8f157e3c258f1c207d6f712983708ae0e7a364a89c4f576b5dcb07118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.22/cc-audit-v3.23.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c4ad0529e496049e7813452e7c6cd75fe8334c5b1e77de56baf54326838b952"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.22/cc-audit-v3.23.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "893acb5104e9bdb6afcae4df04bf3361290f8118e396abd3d3ab4f979306e526"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
