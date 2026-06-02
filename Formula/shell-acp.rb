class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.1/shell-acp-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "6c739873043bf1bd0d1cb00440b91140ae9add3352f8d3786cb64dfcd0a590b8"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.1/shell-acp-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "d53b461205a94c981dc3b234e14463986ece9522e16cdba0e7ce4765acf80861"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.1/shell-acp-0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30246b7d6af1b0c0652c0897ecdf273278f8c8cedebcdbfa3063c95a158e21cf"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.1/shell-acp-0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4abeb5da4d506880ca666a9c6cd86f5250c926c0a49f4aaf818f6abfbf096646"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match "shell-acp started", shell_output("echo | #{bin}/shell-acp 2>&1")
  end
end
