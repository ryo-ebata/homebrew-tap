class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.29/cc-audit-v3.23.29-aarch64-apple-darwin.tar.gz"
      sha256 "218bf9c63957c9be61176d624249ed8af0416ef3628740a8af361b6d51e60271"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.29/cc-audit-v3.23.29-x86_64-apple-darwin.tar.gz"
      sha256 "fc672238907552c1141f8a20465007ac456bb57eb0f21f0bf39dd8600aca5910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.29/cc-audit-v3.23.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81faa42a0106a0cd31f1cbac4b691ac18e254e85a450fb6506337b8d3f4c96c7"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.29/cc-audit-v3.23.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c27cc9b8768305e600b906c3e30a347793f7175a6249c5e51aa3565814d8b62"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
