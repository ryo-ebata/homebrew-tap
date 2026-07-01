class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.6.0/cc-audit-v3.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c1120e3612da3f11f6273c5cdf41c729be3dd401fb81ec2714f6eb1b0095d5b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.6.0/cc-audit-v3.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1081f6f54c879621e6e80c8ff1982ebd662f60f56f2f6cf02eec3aa19623432c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.6.0/cc-audit-v3.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cbfbc4b54453bd9e38c40142046f12d3a44ea8bf37ce68eb4db4dac31dae01fc"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.6.0/cc-audit-v3.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b58bd9c8204317283bf6d43e04aca03c72d1840cb40e9da608dd0403b86bfb26"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
