class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.25/cc-audit-v3.17.25-aarch64-apple-darwin.tar.gz"
      sha256 "5493af81500a4dd8588841f53fe7cca65b1726005523ab355c9e550af1f69340"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.25/cc-audit-v3.17.25-x86_64-apple-darwin.tar.gz"
      sha256 "03d6df0184c3b867e1b1f77ad7c1c4ab2b519de9637d5025872fba7a09e51dd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.25/cc-audit-v3.17.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abf0849b2bdd001b16d42048c6dcb3257f24ba8e61fb7af108d8a4492558ab86"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.25/cc-audit-v3.17.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f3879eea7e16503b29d843da5b9c9a70942a1df565ec2b002a1ddc1a43aaf51"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
