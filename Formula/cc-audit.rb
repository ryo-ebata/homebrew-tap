class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.24/cc-audit-v3.17.24-aarch64-apple-darwin.tar.gz"
      sha256 "a9b0ad6f527ecedd0ff0a6155cbaaf206cad99c124c4903669a5da8aed013eb2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.24/cc-audit-v3.17.24-x86_64-apple-darwin.tar.gz"
      sha256 "93593ac38234c53bdd7da7d6132985d523aa85a4f071214212b5e5a94d7f3d71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.24/cc-audit-v3.17.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43bd8d75cdeaaa03da929ef987c57a6b59bdf77e7673c00ea67c313a662ba8a0"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.24/cc-audit-v3.17.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f85be86488bd57208786d6944dce285c49dc394eed52c180ed55bde651f9c478"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
