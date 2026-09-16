class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.19/cc-audit-v3.22.19-aarch64-apple-darwin.tar.gz"
      sha256 "067cf3ce4e56ded2fc251ad9e6e4dace99016bf9d929be9a6a9e939ab0ae6051"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.19/cc-audit-v3.22.19-x86_64-apple-darwin.tar.gz"
      sha256 "0f8609a72470c1ceb1a1785d7316a3cdffa02ffe47e5ef3c879d156ae803fded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.19/cc-audit-v3.22.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af01d31ab24b7c11e2cef5daaedf2a2c8ef4b8c3ef9b467ef2e2960411318ee4"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.19/cc-audit-v3.22.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "998672a90712eb70ba0967291c4f46d3977440946bc098b4a410f939c6a56956"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
