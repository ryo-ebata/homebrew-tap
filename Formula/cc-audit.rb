class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.14.0/cc-audit-v3.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "5410036d28cc16521f8ea1638bdf38e1a7b7d29a559302490ebcd5d9f1930033"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.14.0/cc-audit-v3.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "20049d1c639ccbe09b50baf73b1416b4d657e556d67d35f553379a93c0b8bdc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.14.0/cc-audit-v3.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a94524994d04a9559c726f9467579e68595515c809f5117f0cb22c1bb830a0b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.14.0/cc-audit-v3.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7eb3d13f71b98da4255470a6053f5709b6fb4f09f066d8317fa9a57998a7d846"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
