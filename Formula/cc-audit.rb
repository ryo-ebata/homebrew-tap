class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.11/cc-audit-v3.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "3b05a5d8b2d33f5cb354cdd8cd32a4464d6109eac4b066084a50e0d21999376d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.11/cc-audit-v3.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "20604bffd4184a5e7f49aa9d75b73638046db2b3698509aa54654df465f8cfb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.11/cc-audit-v3.2.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e552c4ba5e8bb3d744801886e947a29c4e2ad7f86c8c2b9c44ce2a32fe0f15b9"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.11/cc-audit-v3.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "963b9e74265123c87bc5a014548ffe4e935fa9979658a74bac926ccbc77a1e62"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
