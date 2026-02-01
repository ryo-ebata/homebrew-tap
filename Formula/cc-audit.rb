class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.9/cc-audit-v3.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "4d97574ebc6452cc9135ec80244ac3877c511eb34c62b46cf70a1848d94e66f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.9/cc-audit-v3.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "cfd091e2c06c5e43a2216e7cd009ef2849895312b4d7389db7a8cb50e36f1b7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.9/cc-audit-v3.2.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd467cbdf1abdea80fb5faa3b80446a774e39ce749ca0308798b8f0a5ec57d88"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.9/cc-audit-v3.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16bab58692ac125a7b37cf7cdd6330e69d4349a580b91809a4a76cfe4dad5d22"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
