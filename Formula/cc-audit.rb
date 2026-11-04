class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.34/cc-audit-v3.23.34-aarch64-apple-darwin.tar.gz"
      sha256 "33765a48bbfd1d351cf375c750bbdbe52b0e767ab25627896979eb5e83a5ca77"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.34/cc-audit-v3.23.34-x86_64-apple-darwin.tar.gz"
      sha256 "b55090b7d0cfe20baaa92cbac3f70117e3acf2d1c6b747e76d182298a961e0df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.34/cc-audit-v3.23.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85aafc7e8dc5b1c2c38ca8e7a44f1c1c77f362f6b79158d08a569fb642bdbd53"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.34/cc-audit-v3.23.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "974b0ce18b7180771145b76a37af5d08f0492d99ed6c1a313b9e1c2f7846e48a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
