class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.7/cc-audit-v3.23.7-aarch64-apple-darwin.tar.gz"
      sha256 "954b0ebe5cbc695e0dd779a06ff3c044ca39c44e091d0771b668380c968d8082"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.7/cc-audit-v3.23.7-x86_64-apple-darwin.tar.gz"
      sha256 "484f0e859c47896b03209decba18b454cc1356af268e00bacfc07976f5d4e976"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.7/cc-audit-v3.23.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd331de9894972ab5bcd7e3bc603d9202652247b8006601fbc906c9024bb75ab"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.7/cc-audit-v3.23.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b9ea300cc804f3acdb87925a7402ccbb827e9381cdb6185158ddbabb7670a34"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
