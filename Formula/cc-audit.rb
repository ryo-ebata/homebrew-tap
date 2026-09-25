class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.12/cc-audit-v3.23.12-aarch64-apple-darwin.tar.gz"
      sha256 "060c795ba524f0f3a624af17ee3e297ada2e26d64f9869052c0f78b349f74566"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.12/cc-audit-v3.23.12-x86_64-apple-darwin.tar.gz"
      sha256 "7fd978e75ec2c1e029319e90519db36e2e7036896d47d679be572427f9abaaa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.12/cc-audit-v3.23.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5845f272b100c86c9242001a15496ebe3fba534e19391246a649295d9a5c6c28"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.12/cc-audit-v3.23.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b768bdf319f1c99ff67152b1c3519384d5fce5c5c60485530903f22dc47bb71a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
