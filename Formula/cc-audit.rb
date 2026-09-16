class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.35/cc-audit-v3.22.35-aarch64-apple-darwin.tar.gz"
      sha256 "f0867725ee665bd54de73176adcb97edf7924237f378031e5b3ba4a3016cc43e"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.35/cc-audit-v3.22.35-x86_64-apple-darwin.tar.gz"
      sha256 "48a762c10cc30cf9b9d172e6bb9cd0d863adea1977673a678449fc45e9767730"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.35/cc-audit-v3.22.35-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2684bdda89a6cab8f594bc9cec7f00e3ca1931542c71abe937197b68f26d044d"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.35/cc-audit-v3.22.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59b2ec6a616c3bc5b02e907ce4af84ab4376387ca9f455e097a7a98476e31797"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
