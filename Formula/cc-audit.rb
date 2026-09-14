class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.12/cc-audit-v3.17.12-aarch64-apple-darwin.tar.gz"
      sha256 "10631829493d9cae833d7906827a72744ce5911bd48985aa18163611956a18e8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.12/cc-audit-v3.17.12-x86_64-apple-darwin.tar.gz"
      sha256 "2b714c28e415d9b0e45c38b9a4ee53888cbd9e715d17f1d2bb93e4a83765d3f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.12/cc-audit-v3.17.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfda610d2ed7a08ebe042c184eb26b6350d14c2b1f1df88046f325848460726d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.12/cc-audit-v3.17.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3199ae3a7fdd35c4f10decbdcec02250673268dac6f7765ff19789bf25151086"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
