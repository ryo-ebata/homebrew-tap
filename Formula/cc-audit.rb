class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.36/cc-audit-v3.22.36-aarch64-apple-darwin.tar.gz"
      sha256 "6d577da2641f117f260573811e2ab72336c687bd5bb32ec388ad1abecf046272"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.36/cc-audit-v3.22.36-x86_64-apple-darwin.tar.gz"
      sha256 "6cb8fe705ed910546b2c3c6e8e495607beb4802ded860b4a5a3a0cc1293646dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.36/cc-audit-v3.22.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f38cf3fd2bf02991711a4467d81cbac6bc292b4e9ac28cd7af43d2b8c4cf5aef"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.36/cc-audit-v3.22.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7560d4073700e3a21d09aa343dd50deb059084db4cbcd68ec61bbad284a56d1"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
