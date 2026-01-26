class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v2.0.0/cc-audit-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v2.0.0-aarch64-apple-darwin.sha256:e402068897723805a934e57e972359cffabf560eb60f5dcecdb3044bca7f843e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v2.0.0/cc-audit-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v2.0.0-x86_64-apple-darwin.sha256:2696da1c0c1e380a21dcb8262046c69c21c29c8cc2fa9600dc93bb1cd41f4137"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v2.0.0/cc-audit-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v2.0.0-aarch64-unknown-linux-gnu.sha256:aa5f9eb59d1b5c4040c9129de67e023c9bdef55b523093a834e3d6f97b198888"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v2.0.0/cc-audit-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v2.0.0-x86_64-unknown-linux-gnu.sha256:f077bb13715c483519a94ac36c41ef0c51bed6c0e5a5fc4a11991e6c54997e6c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
