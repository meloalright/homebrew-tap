class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.13"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.13/shell-acp-0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "1b6a0d1136fb17501bcc6618614114e4392686519e42367e56c1a0fd546493d8"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.13/shell-acp-0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "cc25da932b2e3073c582fe99fdfe8286d2e99f8760dd8303864d5d7d3fbb61c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.13/shell-acp-0.0.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2717280cead882501f653ae491abcb2848d09f7a4b7772109dd266c2ce6fa1df"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.13/shell-acp-0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "692dc3165888b9f654038de3320efff037c976785f95bd59e2e33a5db59597db"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
