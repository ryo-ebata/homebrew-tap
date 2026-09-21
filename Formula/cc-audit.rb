class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.8/cc-audit-v3.23.8-aarch64-apple-darwin.tar.gz"
      sha256 "7baa9ab24eccbe2167b6fea1d11fc555ca2bc9843b4f2bf48804cc328e5886da"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.8/cc-audit-v3.23.8-x86_64-apple-darwin.tar.gz"
      sha256 "5101b92bb0fc40a5e2b71089f64905193021ea1956d3191b86f341b236d8babb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.8/cc-audit-v3.23.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fc12d5c8ff5d6770b760b7a3d187334a93939a5edd2c89b08587c175372b911"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.8/cc-audit-v3.23.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec7e778d6fb6f953c42ff5e07f9ecce7c9c42a07e3d7cd16db8c3d93fc9e78d2"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
