class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.15/cc-audit-v3.17.15-aarch64-apple-darwin.tar.gz"
      sha256 "0dabacb8bdfe2c005b19dc1173641f6447c55cb60a23cbd94fa171c729cfdedf"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.15/cc-audit-v3.17.15-x86_64-apple-darwin.tar.gz"
      sha256 "5a063c29f8bda18eda760574ffd544f33d41d372562ae1e39b9818741ebd9140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.15/cc-audit-v3.17.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ad104396e34a9acc92d8e23fbfb18bf98c7ba93ea7d87f133c87ebdf248eff2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.15/cc-audit-v3.17.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99618730df6f1b15184d5d9112c312fb59d1c11fb147f5b66c26e72bd773307c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
