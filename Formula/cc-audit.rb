class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.16/cc-audit-v3.22.16-aarch64-apple-darwin.tar.gz"
      sha256 "311e585755ab72e0277ababd7c78e3931f0d6eaf10b4f7db79b3bc51070c4c62"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.16/cc-audit-v3.22.16-x86_64-apple-darwin.tar.gz"
      sha256 "95b862466c73173dfc3b42ce1888b044f6649177155397ba207118742403f4a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.16/cc-audit-v3.22.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd9cb2d0e8378edc9a35c667d19de28a82a5253cc0e0eb8e6e9c41a6920888c2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.16/cc-audit-v3.22.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8fb504206e0f729ec7522f53602d9f142fbd3360238bff5ad5c0c3674ef50b3"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
