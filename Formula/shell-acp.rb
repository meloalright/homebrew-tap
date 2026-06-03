class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.11"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "edd174bdba71c96daae87f0aad2fc72b07d092fd5919e32bf0e77177db60dc49"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "85018c96f255db98ce2ece6ac371f8f849060a688460ac3811384a7b19e313b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a295fde4df79cc2ac11d5afcabb67c1c57dba491e1aef3049ed6faa3dc525f61"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "554b44a538c7f5d04ea294d69a77e68436f22371e1cf769da4827531c4a3701f"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
