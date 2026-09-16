class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.0/cc-audit-v3.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "555a95ca6edf5ce25d7f92c759ff9ef0b55b7a066da460a6ceca6d8644e05511"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.0/cc-audit-v3.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c2427cb08faff82e4a1da165c1e829ec7353f0f49e128ae506b292f9ebc0726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.0/cc-audit-v3.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "411e27a64a906c190e6b580048a04e1685abf10b9081f2e8d278d51816f048ee"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.0/cc-audit-v3.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88e8d72f8b6adacc9f7db6dcc499fcc0be1e001628a40eed724408b76b792107"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
