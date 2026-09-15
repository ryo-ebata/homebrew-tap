class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.8/cc-audit-v3.22.8-aarch64-apple-darwin.tar.gz"
      sha256 "819fc1649a703b3feb46f63fc239d7763ea87161659c35adc0855c38a388ca31"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.8/cc-audit-v3.22.8-x86_64-apple-darwin.tar.gz"
      sha256 "68282337ecf8ab7a337b0648b98555acd40c5c37ff9a340d88cf9fccb0cf536c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.8/cc-audit-v3.22.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e0a3fcad6c713015e03266a933cf8ea97636f5506c6f48db805f575087d84f1"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.8/cc-audit-v3.22.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ff3f9471987654720b5323c44ad52508dc8926eab512e58e3ffea46d6e64ac9"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
