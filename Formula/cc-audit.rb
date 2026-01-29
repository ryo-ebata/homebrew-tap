class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.3/cc-audit-v3.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "32ba69019c417e40dc32fa344b665eb4dcef6065fb64b170c7492b630ba5de97"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.3/cc-audit-v3.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "db85c1cccbc97013af1cdecc8428e3f5f9de1d54b84b0e81a3bc37a08aaeb023"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.3/cc-audit-v3.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfb8f15f30bcede2765a31fb14c86acadee18ebf753ea8784a40e950a659483b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.3/cc-audit-v3.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9932636a74d78fa1c7e07f1f5271afb70dfa437abce80b4960c9f149f905c453"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
