class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.11"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "456e3515394d4fb6c2fa35a36869d093173b4e57a759f56b8e11b6323b99675f"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "3a2112f8646fafa62136be31b846247ca5951825af561048755973ec5c016a98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "787737b1e27a8b841e871745d67168c49ecd42f79e851bf0d75e5d1d1c8f7936"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.11/shell-acp-0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a802d10a8ed477424236c9ab76167b3d2c6640dc48fbf1620627496db9f68ca"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
