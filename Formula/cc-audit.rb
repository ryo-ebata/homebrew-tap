class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.23/cc-audit-v3.23.23-aarch64-apple-darwin.tar.gz"
      sha256 "c6e1e17920d1144bfe69b2861b3d5fc9e9dbebba5f263465bc1c671ef531cec7"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.23/cc-audit-v3.23.23-x86_64-apple-darwin.tar.gz"
      sha256 "117da64f64adcb03fde6d53fbe9f3f009f2876a4ef17a756432cd6421961fc88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.23/cc-audit-v3.23.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a7777f76a95b9b5ebb7b8533df0ed64567155ec9d65486711ff214162d8908f"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.23/cc-audit-v3.23.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e9ca6567a726714ff10ce9ec7f0ae4521eae3750b1a137be1f0b5482763e554"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
