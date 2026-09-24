class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.11/cc-audit-v3.23.11-aarch64-apple-darwin.tar.gz"
      sha256 "8fc9a6b5c20ac8abc48c6abd4c3fc6d15779f1e4bb4b7821bd1e9d9bf19a57fa"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.11/cc-audit-v3.23.11-x86_64-apple-darwin.tar.gz"
      sha256 "02323c65783f22f0bd90a064ef554d29b9e0fbb685c6ed0cc3da7be3b65d92cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.11/cc-audit-v3.23.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb7b0e683146e6ef6e95f1a455a3f2c3f8403baec8ffb909d234a990acd0a63b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.11/cc-audit-v3.23.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6598bf7644b5d9b67614dbdee0aca01f3d227921951a74e02af5f941110dc7d8"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
