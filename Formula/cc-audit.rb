class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.0/cc-audit-v3.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "1013178d06506bdd1ec9db54e95e5a433302b94b5bbe375acc817f489ecdd0ce"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.0/cc-audit-v3.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e1da2ef278601ba77beaa61c9f96d5e5913be8069de9f4aec5051074c404965"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.0/cc-audit-v3.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ffd92717b96d93bf95eed057f28e065e487c59d3af5a231452c1aa570500c4b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.0/cc-audit-v3.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b9828c11a4182175957e2c7e38cf9ef3afe04bd38df470a67a7349d896ba220"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
