class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.1/cc-audit-v3.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c21ca4d46b82e185854ad29ec5ef726b1764295513859e76760494caec50cd3"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.1/cc-audit-v3.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "4132fb7e26f4080f0ed7fb0bfaa182f8592771013ab7f9661f547aff03a76280"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.1/cc-audit-v3.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df10f6507953f363bec8a690d0b83fb1dbb31f9c54b6f03c9808c94c951c32e0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.10.1/cc-audit-v3.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3958a0a9d3f34b0d34b9696428bc6a2fd0fe3a9bfccac8a45a9ae2b6941e7ea1"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
