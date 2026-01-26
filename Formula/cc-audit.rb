class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v1.1.0/cc-audit-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v1.1.0-aarch64-apple-darwin.sha256:cf56f3eaf73e092805b0812b12f71849f92c1e5e6e08a9b0614e60f13e52f535"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v1.1.0/cc-audit-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v1.1.0-x86_64-apple-darwin.sha256:881e59f4f5a10eee8882cc72195eb74ad7a4a577905f664928e0757720dbc0fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v1.1.0/cc-audit-v1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v1.1.0-aarch64-unknown-linux-gnu.sha256:6cd5506c62d0ac7b9d3a45aee2334af1f0af0b81dcb74d3b0c4e4000e4e3ccec"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v1.1.0/cc-audit-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v1.1.0-x86_64-unknown-linux-gnu.sha256:a322b93b3fd5e0b5466eedf051687aae5b333e103bac088ae3042273b7a3e18a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
