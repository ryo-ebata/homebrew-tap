class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.12.0/cc-audit-v3.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "c071d65c0a529684405f82d99b604ea1f59be891a3f57e402972a7ccc142d352"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.12.0/cc-audit-v3.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "4cb771f79385c87cf04bdd32bdf1f2db75993db0bdfe63b1bf2d969e825623c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.12.0/cc-audit-v3.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "790e8a7337300376741127372275c83af8454bd597f42abee5bd654cfd0cea96"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.12.0/cc-audit-v3.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fef25a2f9c41aed3019fbaff6411328c22124655232e7e57f3f5e0ae362d281a"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
