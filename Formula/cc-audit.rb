class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.20/cc-audit-v3.23.20-aarch64-apple-darwin.tar.gz"
      sha256 "4b52fc3afae2543692fded482cc38bb9ea605c3a8281dac003270d7d05e52bc9"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.20/cc-audit-v3.23.20-x86_64-apple-darwin.tar.gz"
      sha256 "9e1bc8b162a651221792992039d5ef0f99549066063c361d0f0f14636ba8e9f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.20/cc-audit-v3.23.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11914b6fc3e8ec875e89e937bfaf8a27926fbff3a459d644abd390c8dbd8247b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.20/cc-audit-v3.23.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6046b2c4991f824009cc5982841f88f998af697dc253834657f3bbe4f869f79"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
