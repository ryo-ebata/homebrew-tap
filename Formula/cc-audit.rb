class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.18/cc-audit-v3.17.18-aarch64-apple-darwin.tar.gz"
      sha256 "07f7bd0a517fce0552a6ccac19335f225a6bf19b06b93f3e79d347edc073691c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.18/cc-audit-v3.17.18-x86_64-apple-darwin.tar.gz"
      sha256 "a5e465ea72a05b86ebf115ca0257ca76d631055168612ca529a91ff0ce269f19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.18/cc-audit-v3.17.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9b57f6463c15c72345d80b093fd6b66383df7cc9f430ce9c4c93f2795239465"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.18/cc-audit-v3.17.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cedd7c32500d668c3fcec2020c07885bab879b5ccce2c3e27aff9f94652152cf"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
