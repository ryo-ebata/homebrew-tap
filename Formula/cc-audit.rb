class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.5/cc-audit-v3.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "a32d731e7cf960adf7327b204779617679ab76f0ec1da81ac7ef195a78e5dc06"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.5/cc-audit-v3.11.5-x86_64-apple-darwin.tar.gz"
      sha256 "cf613df822fb25cd91f68542d8c982e254997a25d9fa00135294ff0a7665d3f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.5/cc-audit-v3.11.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2c39a92980cace2b967d3279a8534f5f61f5dab2de18a1ed2aecffd31867df0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.5/cc-audit-v3.11.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47c9cac3f47bb7d3df3be0baa3a2834a711eeed5ec53bfc6a0bb8eacdd7ee361"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
