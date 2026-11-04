class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.31/cc-audit-v3.23.31-aarch64-apple-darwin.tar.gz"
      sha256 "29cc4783e8af6712ba97f8c3801e6bceafc9fefcf4044f60784f45156614a59f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.31/cc-audit-v3.23.31-x86_64-apple-darwin.tar.gz"
      sha256 "775a6f139fd82ef721b8f6c18791664b26113710da237f2b91971dad92c9865a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.31/cc-audit-v3.23.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b68575bd8df8b9a4df552503d5d77c413aa532a62de3cf90dcbf7ca86bd3edff"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.31/cc-audit-v3.23.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15be49ad3c92d4b811baebeb25b29584c22ddb63ba9ba45dfae5d602ea407cb0"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
