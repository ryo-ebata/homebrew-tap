class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.5/cc-audit-v3.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "f39a6cf3daf239723d848996eac8c842028f4fbb81507b81bfc62252d29bdd69"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.5/cc-audit-v3.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "f0fbe173e1ba937c4c03ccd4dfb173df62a3aff7338a51a6525d5a189ad08b6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.5/cc-audit-v3.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c04b09ebdf52ef8cad554fc9e85c8bb5e353c77cff777d97db5ad0d234c1c8db"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.5/cc-audit-v3.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03bae1c2453395afac65a1b4f005e5ed429002905ed04b99bcf738763f0bc39c"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
