class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.10/cc-audit-v3.22.10-aarch64-apple-darwin.tar.gz"
      sha256 "8a4e8ab863da5221a6cfa4438a9f80a54b3d3fa992bffe1c8fb491d762b2023b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.10/cc-audit-v3.22.10-x86_64-apple-darwin.tar.gz"
      sha256 "61cd4a323c9dd4a0b6a4cb1da4e81bda16f7ae773030ef24693dc2d272cc0525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.10/cc-audit-v3.22.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5990db9e03ff2f53976fd856d5b71895fd26274b1d2f0882177d4abee2dabad"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.10/cc-audit-v3.22.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc5544b1000083493015e2b19e7e8df0b6feefdafbb17940a894e5984ed48d97"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
