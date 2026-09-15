class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.4/cc-audit-v3.22.4-aarch64-apple-darwin.tar.gz"
      sha256 "6cc356f92091c4c9b53454bab1abb2d4aa5895bf6667ac8497b243d27eed2ebd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.4/cc-audit-v3.22.4-x86_64-apple-darwin.tar.gz"
      sha256 "97621fa55b5a5648c0d62f03ec73329979cc231d735749f071f5ab8668504769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.4/cc-audit-v3.22.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9e059f81be3b3acff0560b5526cd12a649fa00b480521ef742beca8e46df1f0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.4/cc-audit-v3.22.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82c59cee58443888e6e3c8aa04627d040820573e2715a9b0f4d5866ad4a2b876"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
