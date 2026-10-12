class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.30/cc-audit-v3.23.30-aarch64-apple-darwin.tar.gz"
      sha256 "a907a6f981cc7cadff18b61ba2f2069dd76a80ac657ca2d09ab6096215e60de1"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.30/cc-audit-v3.23.30-x86_64-apple-darwin.tar.gz"
      sha256 "2344fe001d8dd9793b7dbdea9c987133ce9147e32fa2980d021f7ce74075ebc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.30/cc-audit-v3.23.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0efccbc36e11102a680528ad5cd36fa14ccec4746ef498b3e562c845f8c895a"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.30/cc-audit-v3.23.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfbd92feb25e5f7c97d897646f854e2cace6c8d5e53dbe6c1e4b0da4d6d89990"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
