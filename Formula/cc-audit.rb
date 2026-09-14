class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.21/cc-audit-v3.17.21-aarch64-apple-darwin.tar.gz"
      sha256 "570810a84b982e8a78eb83c34d16c87d357efe5fde6bf6f75380fcec195d75c6"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.21/cc-audit-v3.17.21-x86_64-apple-darwin.tar.gz"
      sha256 "b9a60762a2cea305ba30b48a96775ac557ebfb4a638ec03fca3827b621f18c00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.21/cc-audit-v3.17.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd9b19f363ca217b2a3ef30d42ff6ed7a42b0176d12ffad0dc1dac20393f2ec5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.21/cc-audit-v3.17.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5e204dea1382ab78f243a00dcbde2f871a7d90a2596a47e79f742aaa9a4eb71"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
