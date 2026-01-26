class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.0/cc-audit-v3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.0-aarch64-apple-darwin.sha256:76c04d3f0b7f1d483cbdbeb85fc323a83ae6781791a2899c0a15de30079440b6"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.0/cc-audit-v3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.0-x86_64-apple-darwin.sha256:2ea3d69f176b0adee46ddeb921da3a7466115f19127c8d19602e491f4d9ffbdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.0/cc-audit-v3.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.0-aarch64-unknown-linux-gnu.sha256:62eb5ff7778565865677147d8f7e97b58d7f05d3b27f2aba4632885c84fdde1f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.0/cc-audit-v3.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.0-x86_64-unknown-linux-gnu.sha256:4dfa95ee51c40f99230e333c431fe229dce3a5a6ed9eca02ccb581ba64cd6fc9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
