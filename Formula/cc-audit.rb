class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.17.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.14/cc-audit-v3.17.14-aarch64-apple-darwin.tar.gz"
      sha256 "3482465b9c8739219bee9f2a40d8a7a43b7d4278b5620e2f00f8b583ce598d5b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.14/cc-audit-v3.17.14-x86_64-apple-darwin.tar.gz"
      sha256 "78b477a52584be9a2287650cd50010ceb54dbadfd744a7bcc06c5df0fdb674e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.14/cc-audit-v3.17.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc792993c2940d7cb3252a86e5834d85c68d23b2e475f49e2a6aba57c0cd9445"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.17.14/cc-audit-v3.17.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e324f2487a5dc48c3b309eae1617ae8e66f650374ef8230cc7e5e9b93255428"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
