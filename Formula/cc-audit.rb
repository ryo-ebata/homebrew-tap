class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.16/cc-audit-v3.17.16-aarch64-apple-darwin.tar.gz"
      sha256 "3fbb39f9672354fb3809bce79676b97550686d1f906b6d3fa4292951a98fff0b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.16/cc-audit-v3.17.16-x86_64-apple-darwin.tar.gz"
      sha256 "f1eb27e3bd9c96aa33cd8554861b4538b3272af248f1d48bd0f0e777886a5700"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.16/cc-audit-v3.17.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ebb3a589db7af447dd67d11bb7e2952975c29902ddbf432a0e31cf847267238"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.16/cc-audit-v3.17.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3beb412e2c0e4860340b462e5ffbd74faa1a1688476aaf304996a004dedac85"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
