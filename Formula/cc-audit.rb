class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.40/cc-audit-v3.23.40-aarch64-apple-darwin.tar.gz"
      sha256 "f3833747ab92db740882fe80132e71f453d2034839570f932969db580e1bcf70"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.40/cc-audit-v3.23.40-x86_64-apple-darwin.tar.gz"
      sha256 "0b4c64537901aa11045ceeede544a2e07897781ff0c3612feba72f73cf2ccecd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.40/cc-audit-v3.23.40-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afe856ead1a0175eaf0385578e42fccfae114cb1e5cf7dece4d15353156d1ad5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.40/cc-audit-v3.23.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a03fdc138f5878fb604fcdc7663db872bf4c2ee185166794cd9d1f7270187470"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
