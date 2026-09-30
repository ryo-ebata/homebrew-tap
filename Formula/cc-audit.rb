class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.18/cc-audit-v3.23.18-aarch64-apple-darwin.tar.gz"
      sha256 "67fea39528263993ca59ae585a06e129d2920cf205a7b9a533ef14580c49f4ac"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.18/cc-audit-v3.23.18-x86_64-apple-darwin.tar.gz"
      sha256 "879c06cfc3410c03ace4064a802d4de89dfd9485428ab76569b2b6ee9b955ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.18/cc-audit-v3.23.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b649923a5748cd6783bb46cc4eb206888798a4bf808ad427b456d8e09af6ecf2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.18/cc-audit-v3.23.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82b70e94effdea2ed49406f912a274d8139567d31675d3a18c6c042b27c98b2c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
