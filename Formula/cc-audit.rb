class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.9/cc-audit-v3.23.9-aarch64-apple-darwin.tar.gz"
      sha256 "8ad5e0b0b9fe0aaa367715ae3affaf25476e1afc384666c6edd1985891cbfbe4"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.9/cc-audit-v3.23.9-x86_64-apple-darwin.tar.gz"
      sha256 "04dd70fe62adc8ea6cb84b234210a9fe4564f1e6fa350a836bd0ca02d1f94389"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.9/cc-audit-v3.23.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b046841bff96753c0c2cee356703822cd4b851a218b982f2e50c95874ab66166"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.9/cc-audit-v3.23.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "514264e59eb9d6641719b60cd385469bd09a19ca11861eacb6373f1993a93f25"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
