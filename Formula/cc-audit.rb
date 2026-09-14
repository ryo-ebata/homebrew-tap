class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.13/cc-audit-v3.17.13-aarch64-apple-darwin.tar.gz"
      sha256 "68bb3c54998ef6bcb46d61ecfc1de4ff943403e5a3f10a4310c646287a65f50c"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.13/cc-audit-v3.17.13-x86_64-apple-darwin.tar.gz"
      sha256 "26475e50b17f9a10bde1bb805b0c6e8182c6fb2537fb61142b05dcd0ec5405dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.13/cc-audit-v3.17.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab16c3b094bce14d94f228bc1833d0df8f0d168112eb2b30c196658892145ab5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.13/cc-audit-v3.17.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee6d58b288fe2d851475609e453591f389c4ca8003ae9143cc19af4fb45b70b4"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
