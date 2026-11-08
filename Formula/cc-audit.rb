class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.38/cc-audit-v3.23.38-aarch64-apple-darwin.tar.gz"
      sha256 "e141a761b9e895f06d6f3a4d9c0751f654e27907598ebcab6cd387a57e2aea7e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.38/cc-audit-v3.23.38-x86_64-apple-darwin.tar.gz"
      sha256 "31fa7d9d5b00537b29629ff0ae60adefc548f379d4251fec28e6bc81227fde5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.38/cc-audit-v3.23.38-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "222b15c65e7656e666159290dd1c141cf69f42a8a597a835989f96f41f49d779"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.38/cc-audit-v3.23.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "526c62fc48c771016629f0cb4fbb2a3419a40803d14d0733f42fe40390e5263b"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
