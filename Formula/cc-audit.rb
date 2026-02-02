class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.13/cc-audit-v3.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "922928d86c019f43ece425ab2f09c9b4053f8ab78694af83237aedc606f819ba"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.13/cc-audit-v3.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "6be8216b07ccad59e4ffaa62ee2a062826f5e64ebb143191edd0923278b481c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.13/cc-audit-v3.2.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2155311e8b0b1f964f05c3ec5910cff7206a2e727b9b5cb2bd102f20b8438f49"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.13/cc-audit-v3.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0197cbeb5794e70a2f340408eac67312c0a4cd2e7854da606db968af025f0e1"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
