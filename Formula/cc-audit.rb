class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.15/cc-audit-v3.22.15-aarch64-apple-darwin.tar.gz"
      sha256 "1f646ff6bcc3ea26f1ef916e470712cf3ad766bbab97821a7393d46fa943dc6d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.15/cc-audit-v3.22.15-x86_64-apple-darwin.tar.gz"
      sha256 "7225eac61b697282ef5478ea6efc431e44f1d07a6f3ab210f5bb8275c4ed5b1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.15/cc-audit-v3.22.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3df895a6874b0321fe17806e22107bbff4b6eeb7ebd0f343157b1f8fb1aa5c02"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.15/cc-audit-v3.22.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c7b053577ecb53e04402eae41e1663f763593dbba8b4d34a33b59f8e6ee9b2f"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
