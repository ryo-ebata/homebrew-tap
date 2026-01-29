class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.4/cc-audit-v3.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "b47a73d2a5767840f8ac983246f449315adc2a4b7736628c673243424e33ba66"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.4/cc-audit-v3.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "8dc5e52e09fbf75a7679ce314cf95e860a2af043b098b8c0a63667d4a876ac7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.4/cc-audit-v3.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11c9f97743133d8811912e7fd524cebf63e82332eb501fe7513e5d86bf736079"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.2.4/cc-audit-v3.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30c0e6160b761d09c84421696eb5c6e36efa707cd279fccfddedc1a5f650b16f"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
