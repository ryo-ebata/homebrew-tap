class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.14/cc-audit-v3.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "597f1a371d52f75724b4c622d43ed5992ac4c74cd1dc326abbf8e7d6f85c2d73"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.14/cc-audit-v3.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "4b2611ecf6095feb232fb953ae97842708da8cf3a5c2c6e69a1a4ce76ebe4348"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.14/cc-audit-v3.2.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff37ceee972b82c8a0bcb6250f8dfebd27468d96691653b40205b6ba0476b46d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.14/cc-audit-v3.2.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d824c089bc95ffcb853245915dedceda4d467d49c7abb8033a8d4d3b72cf81c2"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
