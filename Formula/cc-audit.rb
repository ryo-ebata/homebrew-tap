class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.7/cc-audit-v3.11.7-aarch64-apple-darwin.tar.gz"
      sha256 "85e6069fbe68430432a1f27ab5d8e7777f3015b377e59d8dd5a47b5016c01665"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.7/cc-audit-v3.11.7-x86_64-apple-darwin.tar.gz"
      sha256 "b87317c631f4ab1d3babc185375a076ad3fff16063d9ebbaaf0f4655c9832c01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.7/cc-audit-v3.11.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2ce2dc9eaaf0b5f4ba0923b864b9252d4d8dce05b19f76916d0c59b93003374"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.7/cc-audit-v3.11.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9d8cadef56546231d7c96f7e926e3563b1409453f5429e528758d79bd22b6c8"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
