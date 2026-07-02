class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.1/cc-audit-v3.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "30f5831e0a5f80dbb99e670c25ba256ce668901ed74327f9bbd69996dc0f2714"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.1/cc-audit-v3.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "f7c717b5a83efce1f1320e4376c5258d31e24112ec404626b3ac2fa58da04a34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.1/cc-audit-v3.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9a45d5091b438e6309fab12b318219d54532442b361a30836185300dbbef354"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.13.1/cc-audit-v3.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0fe67639e7a9b31b706863d9be1a6d9e544c49b1f4f17e94bcdf3a15654c000"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
