# Homebrew Formula for cc-audit
# Copy this file to homebrew-tap/Formula/cc-audit.rb after updating SHA256 values
#
# To calculate SHA256 from release assets:
#   curl -sL https://github.com/ryo-ebata/cc-audit/releases/download/vX.Y.Z/cc-audit-vX.Y.Z-TARGET.tar.gz | shasum -a 256
#
class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v#{version}/cc-audit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8d38d0e8901f83cde01737decbb373ec01523f3055e6b1e892c669e443efa3dc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v#{version}/cc-audit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "720f7cecb9bcdb2c2c01f408f24dfbb1ed6828d0645e2310f7bd02cf4a433993"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v#{version}/cc-audit-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "015b6d8b74f9f1e77860fa6d591eec496141b289060b9d05426440eb473315be"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v#{version}/cc-audit-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea196392657e6393f73e7a8fa2aedbbbbc124208238cd2d1e90e854f009c365b"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
