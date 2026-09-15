class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.12/cc-audit-v3.22.12-aarch64-apple-darwin.tar.gz"
      sha256 "ab27de3a2dceab6d08522bff2056c9e1eed51918e50825ab7dc9dc752f0529f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.12/cc-audit-v3.22.12-x86_64-apple-darwin.tar.gz"
      sha256 "29da9434a9ae9c5be8eaa3e5f210c35c18e284fa89bc293ccb86b64559a15e97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.12/cc-audit-v3.22.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfedd38081b089f19fc3c21ea436b40a409ded2deae90cdcfd634244fd780c58"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.12/cc-audit-v3.22.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad959272c9efdd361047aea15da31797eeeb01748d1e7d5bd3323b861e9f93f6"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
