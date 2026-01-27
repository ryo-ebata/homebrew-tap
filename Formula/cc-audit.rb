class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.1/cc-audit-v3.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.1-aarch64-apple-darwin.sha256:58d961e7aa68d5d7a6b1b721d6b6896c64eb606e9443c5651346419781be25fe"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.1/cc-audit-v3.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.1-x86_64-apple-darwin.sha256:9a826e02e395e7c4ca366d78ba3988e94efbcc31b8e85928017623784e3e61d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.1/cc-audit-v3.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.1-aarch64-unknown-linux-gnu.sha256:6465586322aa6918b5c89bcc1cff889ffcadef86debdab975aa943de06e8564b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.1/cc-audit-v3.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.1-x86_64-unknown-linux-gnu.sha256:850b5969723d73924ad3369b2f5491d7f981c329434b48f346fe63101373237c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
