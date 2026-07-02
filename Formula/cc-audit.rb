class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.9/cc-audit-v3.11.9-aarch64-apple-darwin.tar.gz"
      sha256 "1eb6443bb51c2f7aeaaf426ae9a6c8252ee7ecfc4714abc7fee6f59b03db4823"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.9/cc-audit-v3.11.9-x86_64-apple-darwin.tar.gz"
      sha256 "fdd39d0efe58ee4a77d50112efa845031b916163bb7e29abc107cb4b0c2e0bb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.9/cc-audit-v3.11.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4168670700b74b1caf202a7b811999562d7ce7ae8ec10a76e5ed2c2736cd30fd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.9/cc-audit-v3.11.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acbc1d08f08b132fb80ab221baeaef748b3839be7a6db3268e6376c1a972a214"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
