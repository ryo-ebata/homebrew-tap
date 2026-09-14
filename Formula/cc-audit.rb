class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.20/cc-audit-v3.17.20-aarch64-apple-darwin.tar.gz"
      sha256 "42adbae4115728265dbdc973d81af473ea83514e47e4ca02aae12317a4baf33d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.20/cc-audit-v3.17.20-x86_64-apple-darwin.tar.gz"
      sha256 "a1fdc0107e22a937ea136596483a70a90a54ad4e07ddbc5615419d629bc47c01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.20/cc-audit-v3.17.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcc497d28de64ffc85da345d8ca274bb403302b9b48dda7ee0671aeaa84a56f5"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.20/cc-audit-v3.17.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21faaacaee94431500195000c300b02b6bee72825a25824cde1293770950a3f0"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
