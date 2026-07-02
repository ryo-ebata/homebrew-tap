class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.8/cc-audit-v3.11.8-aarch64-apple-darwin.tar.gz"
      sha256 "9c1e747be599983529dddce97ebca2565901f1e75d04b4d4f63b18515778b902"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.8/cc-audit-v3.11.8-x86_64-apple-darwin.tar.gz"
      sha256 "554c299b979aba5530e68277252a52f538d316dea4bb2d6a906423a83270ffa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.8/cc-audit-v3.11.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddba9a483f2c73d7397b8ebe0fffcc74f164c925b82b75a74b9777b4f1f4ac1d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.8/cc-audit-v3.11.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95ac6d2ad9ea858399a5b2bc00c11b6f45ac4b8e2168a3d0475f26310ddb2f70"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
