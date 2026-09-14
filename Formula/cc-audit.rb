class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.19/cc-audit-v3.17.19-aarch64-apple-darwin.tar.gz"
      sha256 "8b60d64ecbe59e5e5b4ad0f27f0eb199b51676374677cc3309aa2b001b3e3f1b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.19/cc-audit-v3.17.19-x86_64-apple-darwin.tar.gz"
      sha256 "96a42e86628a09aca7c1dc7b6ad8db5c4f7bc8ea5f9ec78fac4b2d201092bbcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.19/cc-audit-v3.17.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a4777e1c0881013cd3db0fc7f068152ae1d340a1078179e0fca34a66a110946"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.19/cc-audit-v3.17.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f023d5e6d2a72c5c507a8448f7d580105e088c4e45196ae6028b46951ce38f3"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
