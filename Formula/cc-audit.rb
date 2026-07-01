class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.4.0/cc-audit-v3.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "45c11af2bfda56dbbaf02885ddd45c109e56eaab8c2aae60dd71951d38fbb8a5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.4.0/cc-audit-v3.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "09537e4afee26a0977314ef0ae7c79adc00cf85bc57bcf62439a8948a6beea22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.4.0/cc-audit-v3.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9766a9ff36bb1866ba1d7134c485b134c3ba021988f5a7ad4a26f99610d0cf3"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.4.0/cc-audit-v3.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79392750c73fd3d73193028445b7e7cf487518243b9849028548a602aa219e31"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
