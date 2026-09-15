class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.13/cc-audit-v3.22.13-aarch64-apple-darwin.tar.gz"
      sha256 "45b165525899779156513421b16ac2c58b5b3755acfcc08ce2707db50f66e419"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.13/cc-audit-v3.22.13-x86_64-apple-darwin.tar.gz"
      sha256 "e9ecb9749744ac93367d5da0991dc8c72be7ace949462e0d5f7a3bed835734b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.13/cc-audit-v3.22.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3d921882965fe5870fcfb9a94fc847bc026cd801028cd1861731012d48f2e4b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.13/cc-audit-v3.22.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8b044dd1f58fbac4d1f6c0d2c2d36b91621f0bd54069853141b1e2f34531190"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
