class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.17/cc-audit-v3.22.17-aarch64-apple-darwin.tar.gz"
      sha256 "41804fe3203170bf7e7757a7f8e01ca4559bcc7783810ba0257de2614c266d0c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.17/cc-audit-v3.22.17-x86_64-apple-darwin.tar.gz"
      sha256 "de16150d3d8b57852f15f3192dd26d5e910d3929a79bd5a5acc285d1e933d979"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.17/cc-audit-v3.22.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fed1773b0cfcef52655b1ca9512e49762564dc882f938890c91508ed72e63af6"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.17/cc-audit-v3.22.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8b1396dd36f5eeea95cf1f936b1f65c61d72102aea75d21d16bbfe6be9db5f3"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
