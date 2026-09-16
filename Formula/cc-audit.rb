class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.1/cc-audit-v3.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "081f3740fd637743685e8312b32b0550a907b5a9236b00065d50cb921747a267"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.1/cc-audit-v3.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "0722817be523eb578fc961fc390868ebfd102c3f8069d7e914312144845b5936"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.1/cc-audit-v3.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f63a494edf3b3621929f35f3e36596a49a29acba69b1ceef1b4e016cd2d772df"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.1/cc-audit-v3.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f99216d4a5882d56af2885d20fb0c02a99dd476a40b75c7551fa54baa6271d2"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
