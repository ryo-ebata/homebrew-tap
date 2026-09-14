class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.23/cc-audit-v3.17.23-aarch64-apple-darwin.tar.gz"
      sha256 "20a3a5c9eafc4d8b4bb999fa20256d064c65c3c77cba5caa680c73dd17782d74"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.23/cc-audit-v3.17.23-x86_64-apple-darwin.tar.gz"
      sha256 "4cfd3d452e3d1f59b08ba455bc2c13481e345c85831ca012b57e4bbdb3891dee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.23/cc-audit-v3.17.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0784d97b7479f76e95136d10014225e4feb866efc70eac56336d94d67d1a5b8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.23/cc-audit-v3.17.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59e0fd5282c1998450473489bf0a4958ae0f826b78f1c8d392b676ab13855306"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
