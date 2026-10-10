class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.28/cc-audit-v3.23.28-aarch64-apple-darwin.tar.gz"
      sha256 "4b50f7b1a50aa80c472cda3c079f2215e923211d885db1c7cf03c4bbca43d28a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.28/cc-audit-v3.23.28-x86_64-apple-darwin.tar.gz"
      sha256 "d59772d61f17cf9273d43b2e99ab96060f96c13303f75e6900f8f4796fc07971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.28/cc-audit-v3.23.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fc0d2f0c288d69a931e76ee9b6c26803afe0ed18d42d54eab803c70a04d84d8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.28/cc-audit-v3.23.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb8b0e906d520f1baace64e4c35a46e8b1cd99ce8c42a3a9dbebc41c58734022"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
