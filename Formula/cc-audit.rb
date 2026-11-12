class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.41/cc-audit-v3.23.41-aarch64-apple-darwin.tar.gz"
      sha256 "53fab09328fcc63f8e6a9082a1d0f1185d1388708d3218c8f7f8c0762bb3feb8"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.41/cc-audit-v3.23.41-x86_64-apple-darwin.tar.gz"
      sha256 "dd5adbd4b53cc515870b1f9d67e627d4addeb0b5a280082b8b70b8950310e939"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.41/cc-audit-v3.23.41-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17c00cb5763197a9099dcba1dffb23153b292644e929f0dce3f4587db3df5dbe"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.41/cc-audit-v3.23.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fca0668357dbbe83fa214b5506264153611f06133f912b0b3af450464af1f4a8"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
