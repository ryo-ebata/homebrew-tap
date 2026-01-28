class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.7/cc-audit-v3.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.7-aarch64-apple-darwin.sha256:cab31ad409e740b2d3d2e430710f639aff1cb53514591eddf83d4f6d4e779d35"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.7/cc-audit-v3.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.7-x86_64-apple-darwin.sha256:81b5c7399e62c219d043e36d2d62e7358ae492ecb8e3dd549cb33c3140e24df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.7/cc-audit-v3.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.7-aarch64-unknown-linux-gnu.sha256:6430b98c361b1c88e8a026b911f65f8abdb637554736eed8a64b59ac62246cc2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.7/cc-audit-v3.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.7-x86_64-unknown-linux-gnu.sha256:cb8ffe7d32e15c5d41dcc916ad95c4f8cccc344b45bc6f94ffe3d9ac5720e44e"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
