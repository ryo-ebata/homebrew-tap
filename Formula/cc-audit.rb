class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.15/cc-audit-v3.23.15-aarch64-apple-darwin.tar.gz"
      sha256 "d95f79b6ecad8f49485572bde30207a70572370b18cf1eb3a57e7f5f65559dcb"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.15/cc-audit-v3.23.15-x86_64-apple-darwin.tar.gz"
      sha256 "f5baddeab9f73505b738bd601b590d7be97b5ff0dd8dc9f2aabc5db46eb0057f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.15/cc-audit-v3.23.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1286aa9adc81b73a3bced79f5c1af143950c9ea5a297fb3339d954a6e560a137"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.15/cc-audit-v3.23.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aabd13c596c34c8bb0fb012e1061740658bb92e0275c024e5231a827fb2aa6e5"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
