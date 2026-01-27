class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.2/cc-audit-v3.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.2-aarch64-apple-darwin.sha256:aea4182065a75cde6c67eed38a5ecb62dfc67322e32cf743d3035d1b06dbf756"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.2/cc-audit-v3.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.2-x86_64-apple-darwin.sha256:25cf7de2181173ab987c44137ca16f9b519fdcc3ec3870146cc2e1755d882a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.2/cc-audit-v3.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.2-aarch64-unknown-linux-gnu.sha256:57ea3991d8fd57e827e72c031b1860bc28e6576898f64b4e2f7e075414a597b6"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.2/cc-audit-v3.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.2-x86_64-unknown-linux-gnu.sha256:195672a8491a9f24edbe078ac4e53ae6c9123b7c8b8ebb4dfe453c6f5da01ea1"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
