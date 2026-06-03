class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.12"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.12/shell-acp-0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "09f09519a288cd3f2e05bd182e9286c5850d65f521e431164748a5a6cd186d92"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.12/shell-acp-0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "7b0c8b782e24ff4add5c1d7ed19893fa7fefdba22578683111b6645536512a9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.12/shell-acp-0.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6dd35768a4af2a81e925de7b9d6ae4da089d33d597017c3b78a0618509a00fe"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.12/shell-acp-0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3fee972a7535ce2d60debe99bfb589d46447f19e9dc0f0c4208a15780a580be"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
