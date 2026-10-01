class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.23.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.19/cc-audit-v3.23.19-aarch64-apple-darwin.tar.gz"
      sha256 "2072e351c484aa05ce0bc75ba3c85a68b1eea3883024e109257fa7a5ab9650f2"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.19/cc-audit-v3.23.19-x86_64-apple-darwin.tar.gz"
      sha256 "c1d58b52cdb6ab97d0e7cdf60e17fecf2172dd0c76d6ecb4f35322cd75eec835"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.19/cc-audit-v3.23.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3445ddce59e3c223c9833d3e8522bb1a53d63424df2d7bb1c7dae700e272b7e1"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.23.19/cc-audit-v3.23.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd1afc2addf7c91a327aa85227a9ca0337f789343ded5f8b2c0d7477ae3d3651"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
