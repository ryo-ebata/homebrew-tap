class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.10/cc-audit-v3.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "41d5f18eb09c014f412493a6d7da8e071cd28837c8983adb4738cbf3fba9b6a3"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.10/cc-audit-v3.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "ee9f2a944fdc208ccb6edb46a50f4c1a7c35e225ebf6bd5c2e0ae785b9120895"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.10/cc-audit-v3.2.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a33031341dfed50b6324007b04cf201378ab50839d1721b23bc945d418dd74e5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.10/cc-audit-v3.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f13e56dbfe8c030d771c987b38eb156046b006bfc2f05432711f4494269d2360"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
