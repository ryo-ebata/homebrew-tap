class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.8/cc-audit-v3.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "019f7a8df607ee8f308b2272d23d232cf2a35825baf2c3c239c637bccb3f78dd"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.8/cc-audit-v3.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "bf6b82eea6ee33df957505cdece7ddebe0ae03eb5846d1c9cf41239551836869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.8/cc-audit-v3.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0caf4376a982e252145780a166543d1df56b12f1070fc335ddf9aa46fc26f6c2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.8/cc-audit-v3.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccdd080bb8cbfe54c1c1bbb47f66a7568cd23c5ebecf73576793c9d187f9a809"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
