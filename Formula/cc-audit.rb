class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.30/cc-audit-v3.17.30-aarch64-apple-darwin.tar.gz"
      sha256 "30edfb47b877b481e1f9a5e2f7c15e6c0a24a0b208d878fc01423b48fb4ed84b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.30/cc-audit-v3.17.30-x86_64-apple-darwin.tar.gz"
      sha256 "8995ead840d337764197183ece0cdd77fdea9bf816553ae8cf483d8b11192e92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.30/cc-audit-v3.17.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a17385279422e9680aec1b99a6b0586fdd1c2a70e44edfb8e58ed2bbc233fce"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.30/cc-audit-v3.17.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c3e8a14101cc6d16a3a50ee6f52fb890ca6dd2c80d3df41c3b6f125448fd0e9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
