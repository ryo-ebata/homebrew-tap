class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.26/cc-audit-v3.17.26-aarch64-apple-darwin.tar.gz"
      sha256 "1992f16a3336af338b1537f112dd627eea44806ab63d1c39844c2d9e81bf6a6a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.26/cc-audit-v3.17.26-x86_64-apple-darwin.tar.gz"
      sha256 "e12aa1d7c7bd24f0bee3a52f0690bdaf18509498c84a94105ac010b39fcc279b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.26/cc-audit-v3.17.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a9ed4d75771a8fb7fc3d05d2d60b7e75e53f245407d8eb633a5778c3d7c34d8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.26/cc-audit-v3.17.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba3249bec1d39c32db2329504cb148c2dd55157791238b06e2c3fa9666fcff5e"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
