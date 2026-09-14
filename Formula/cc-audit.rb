class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.17/cc-audit-v3.17.17-aarch64-apple-darwin.tar.gz"
      sha256 "af3219ecba0dba1c132b88ae105386f4ced7317f05edaf4398338885d3483199"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.17/cc-audit-v3.17.17-x86_64-apple-darwin.tar.gz"
      sha256 "0155924e37ad46bd36d4df37ce13ee7bb16d32985628d871d81f45c418f01e1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.17/cc-audit-v3.17.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ccf41b8ccd88308735a51e240c7e3a86536582413241f61a2b811892973e905"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.17/cc-audit-v3.17.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75a85266eb42033957364c5b0862e9d0234b85eea60008b24aa0f2efa7a3a3d3"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
