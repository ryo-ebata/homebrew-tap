class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.42/cc-audit-v3.23.42-aarch64-apple-darwin.tar.gz"
      sha256 "dad2c760cf530d6cc910de23cfae32c3f78953f363477f3a32a23bf4b4fd1cab"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.42/cc-audit-v3.23.42-x86_64-apple-darwin.tar.gz"
      sha256 "29dc44137507eeccd4b62158b9386622adb2d668b9d4071825c0e32535636a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.42/cc-audit-v3.23.42-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55bd781d9795a215d2ce2b5d7e4a2aa946636caefb3d74b04a7aa2487edb1b11"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.42/cc-audit-v3.23.42-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f45d4fa0c034607291e099475ca96e39951ff769ece0ece892bbe57061ebbb71"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
