class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.38/cc-audit-v3.22.38-aarch64-apple-darwin.tar.gz"
      sha256 "cbddf44ca0f1aaed23ac3132849669e3296d62d23c978014866307a6e04eb1ea"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.38/cc-audit-v3.22.38-x86_64-apple-darwin.tar.gz"
      sha256 "4157ed7546417bd17906325653e415b5ce23420f571d46ffa05865304fad117d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.38/cc-audit-v3.22.38-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a74bab02a5cb4bcb6c906770128445b7b08badd721a8163a68a2952190589b59"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.38/cc-audit-v3.22.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e7a3d0e17b09e720823c10d5101e709f56a6555ab163b833014280c75da0857"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
