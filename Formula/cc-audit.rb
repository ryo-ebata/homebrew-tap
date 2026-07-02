class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.3/cc-audit-v3.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "31036e867df7f30414d67fdc5de96bf48ac12163bc72b48407868ff1f2f101c7"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.3/cc-audit-v3.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "9bd56926fe5210fda112af13897b3222bbccceab1f58f2754166a8da3ace454d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.3/cc-audit-v3.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "319399ecedf26fe11f64c1384b2b41ff497348f5f96e9b9573604f5826753c9f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.3/cc-audit-v3.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5d3bca1640ae5d9bfdecd609875642ae2fb69800b0e36b88dddbcb558303366"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
