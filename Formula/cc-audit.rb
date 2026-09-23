class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.10/cc-audit-v3.23.10-aarch64-apple-darwin.tar.gz"
      sha256 "345a9bdef10806a841ee43306ef70b4ce17fe7191aa7c55fc2d20711e781e2eb"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.10/cc-audit-v3.23.10-x86_64-apple-darwin.tar.gz"
      sha256 "3a2468804f647ab6ba36593c87c716a863af7ed617c75c5ad3e65aa2315bc7fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.10/cc-audit-v3.23.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a591870509dbc45bb5bd0ad4c664a9e489931c362468657fd4074300c2cc76bd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.10/cc-audit-v3.23.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3963bd30fd9a3fc201d1e167015f07443267e6796b6286f45ca4da74e5fb1285"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
