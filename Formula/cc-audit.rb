class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.5/cc-audit-v3.23.5-aarch64-apple-darwin.tar.gz"
      sha256 "ddcf437faffee6c61f1a45dbae0fa7eb582c72936fe8282ef36cf61bc1656ec3"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.5/cc-audit-v3.23.5-x86_64-apple-darwin.tar.gz"
      sha256 "3af3ed6b8434a5586f69ed57c81cbe43f5605627ba2a4861cd08c1bc60019fa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.5/cc-audit-v3.23.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1612d91c87db48e4823f2dacf8fa6829e5e49dadb154f452ef89314f2958e7ce"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.5/cc-audit-v3.23.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3e4cf1bb7b3df032b04cf59905276c8399d587715b9018c0f29da40c6f00d12"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
