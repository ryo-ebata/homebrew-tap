class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.3.0/cc-audit-v3.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "88b48f0565f3028ed37a3b25d418f6de832243c874398bbefbdbb691f10e1499"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.3.0/cc-audit-v3.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1abb5370cb51007f11eac34f798d2eaa2ec7f94aed00c3d8b19641ac808d776"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.3.0/cc-audit-v3.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "301357b7a591d883f9e55994f471e13f4c2024edecf92098990edff956a55d27"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.3.0/cc-audit-v3.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "366062369e14acb4fcf18ea85faec7658dfbfbb2cef1544f87156ae81762968d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
