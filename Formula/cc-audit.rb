class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.6/cc-audit-v3.22.6-aarch64-apple-darwin.tar.gz"
      sha256 "5a168ab5e7b3cbf4c5b8b37a5883a2568e8f1544b855f27fd4ccc287495b4842"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.6/cc-audit-v3.22.6-x86_64-apple-darwin.tar.gz"
      sha256 "beaade1bb147e92cd2cb1fdc1a36c01403459511c1fd886c438692b67ba4abc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.6/cc-audit-v3.22.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2533192786c5da40e85595f3056f78e3167929dd4c4718046f7ecdb31286069e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.6/cc-audit-v3.22.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69f5719e860ee26532463528a9855d4782691f6716e413ba48f34a4727c250fe"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
