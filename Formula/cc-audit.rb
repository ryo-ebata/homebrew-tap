class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.4/cc-audit-v3.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.4-aarch64-apple-darwin.sha256:61f8ca4a3750c0cca8c34822ec32f444172983ea8dd3ebfe98342539b93aed42"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.4/cc-audit-v3.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "cc-audit-v3.1.4-x86_64-apple-darwin.sha256:9cef7b5d190d5069c912abc2ea80f2a47050b8cb5a1e638e4290253af5d087be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.4/cc-audit-v3.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.4-aarch64-unknown-linux-gnu.sha256:c2eb609b342f574cc8b6cab1c818141c2812594b20f24ccf90f4f06ea10425ea"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.1.4/cc-audit-v3.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc-audit-v3.1.4-x86_64-unknown-linux-gnu.sha256:ee137d6c5c3af187eec5f890160a52e37ca7013b5ef1aab99109711b547be74d"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
