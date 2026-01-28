class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.1/cc-audit-v3.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.1-aarch64-apple-darwin.sha256:75207684a799b01a6b632ef4fd79e7fc75338d01eb2ba09798a2f019598e7b15"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.1/cc-audit-v3.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.2.1-x86_64-apple-darwin.sha256:ffe3720abdffe8c5b2ae56ba46dd01405ed045d340dbd400e1cce86c5b2212e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.1/cc-audit-v3.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.1-aarch64-unknown-linux-gnu.sha256:b6075b5b7fb7a21fac63c97887f73eac84af3c06096335db855e15823faa4463"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.1/cc-audit-v3.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.2.1-x86_64-unknown-linux-gnu.sha256:b47558e85b17caa8f7c09a6edcfac7338456ca6136bb0c187d75586079ede1da"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
