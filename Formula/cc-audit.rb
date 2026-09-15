class CcAudit < Formula
  desc "Security auditor for Claude Code skills, hooks, and MCP servers"
  homepage "https://github.com/ryo-ebata/cc-audit"
  version "3.22.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.9/cc-audit-v3.22.9-aarch64-apple-darwin.tar.gz"
      sha256 "a05431c6dda661520e9498f6130070653868ad29b301aa0be092fd5b48fb480b"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.9/cc-audit-v3.22.9-x86_64-apple-darwin.tar.gz"
      sha256 "1f42ce51803ba7bbc92b4e94ce9ec6cf46a9e35943ad489b942a3356e49e16b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.9/cc-audit-v3.22.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4a1c4a89fffb1c848f76af89c34eb5684251c6f98852364d5c66fee44f6cbeb"
    end
    on_intel do
      url "https://github.com/ryo-ebata/cc-audit/releases/download/v3.22.9/cc-audit-v3.22.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15b556771f1f2a34bdf466a129f3b1dc4b61ccce0e891707b5d2ed0706b6fa64"
    end
  end

  def install
    bin.install "cc-audit"
  end

  test do
    assert_match "cc-audit", shell_output("#{bin}/cc-audit --version")
  end
end
