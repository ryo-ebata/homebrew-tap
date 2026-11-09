class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.39/cc-audit-v3.23.39-aarch64-apple-darwin.tar.gz"
      sha256 "96dd5bc3d1d04b25ddb444cc784d5d3c360a608360a1978f98f406ec3cc0f559"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.39/cc-audit-v3.23.39-x86_64-apple-darwin.tar.gz"
      sha256 "cdc05d2f06c36df84ec267fd6052adda07338f3c45a8121c0cbe86c2973a20a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.39/cc-audit-v3.23.39-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6524397d8fb9ff6c1c013deb2fc0b721f7203768757c3844f9ea9c857815b470"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.39/cc-audit-v3.23.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f01cdaa1d289900bb16f455754634e28810274973c0bb463af03b628213f59bd"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
