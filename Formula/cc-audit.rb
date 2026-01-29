class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.6/cc-audit-v3.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "f15aaceb08e3074b28a39b3a6921e255059f29297a5c7a4631d6adeaebbc29a4"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.6/cc-audit-v3.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "e99145bdc71282c969484254e4d9b052ed77e5f2bbfdf18c0fe0194e9b150292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.6/cc-audit-v3.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9961ed4bb2cf2b0ec319d3e2ce6afb085df4dd432ebd89d4040b54ede8888ea1"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.6/cc-audit-v3.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18fa79e2d3bd72b380efa940632dba7b1e02e3a580efde1cb0345f24f2d40638"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
