class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.0/cc-audit-v3.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4d2d5605b73daf506a5bca012b275d71debd555938a5b556e3ec0474f3add25"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.0/cc-audit-v3.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "ba2fb18edbc587aac13a16b6527446e814262a34774770e03b19207ef0800f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.0/cc-audit-v3.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86fddaf74b964c9ec2909ff710c7d1278dcc00108fb395823dd019d70a944e46"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.11.0/cc-audit-v3.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45bf4b92049be317cfce096b6dcfed236bfba1904d987009458b73d03a046e8d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
